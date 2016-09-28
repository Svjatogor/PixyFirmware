//
// begin license header
//
// This file is part of Pixy CMUcam5 or "Pixy" for short
//
// All Pixy source code is provided under the terms of the
// GNU General Public License v2 (http://www.gnu.org/licenses/gpl-2.0.html).
// Those wishing to use Pixy source code, software and/or
// technologies under different licensing terms should contact us at
// cmucam@cs.cmu.edu. Such licensing terms are available for
// all portions of the Pixy codebase presented here.
//
// end license header
//

#include <stdio.h>
#include "progvideo.h"
#include "pixy_init.h"
#include "camera.h"
//#include "colorlut.h"
#include "blobs.h"
#include "conncomp.h"
#include "param.h"
#include <string.h>

 
Program g_progVideo =
{
	"video",
	"continuous stream of raw camera frames",
	videoSetup, 
	videoLoop
};

int videoSetup()
{
	return 0;
}

void sendCustom(uint8_t renderFlags=RENDER_FLAG_FLUSH)
{
	int32_t len;
	uint8_t *frame = (uint8_t *)SRAM1_LOC;
	uint32_t fcc;

	// fill buffer contents manually for return data
	len = Chirp::serialize(g_chirpUsb, frame, SRAM1_SIZE, HTYPE(FOURCC('B','A','8','1')), HINT8(renderFlags), UINT16(CAM_RES2_WIDTH), UINT16(CAM_RES2_HEIGHT), UINTS8_NO_COPY(CAM_RES2_WIDTH*CAM_RES2_HEIGHT), END);
	// write frame after chirp args
	cam_getFrame(frame+len, SRAM1_SIZE-len, CAM_GRAB_M1R2, 0, 0, CAM_RES2_WIDTH, CAM_RES2_HEIGHT);

	//convolutionImage(CAM_RES2_WIDTH, CAM_RES2_HEIGHT, len, frame, true);
	//inverceImage(CAM_RES2_WIDTH, CAM_RES2_HEIGHT, len, frame);
	// tell chirp to use this buffer
	g_chirpUsb->useBuffer(frame, len+CAM_RES2_WIDTH*CAM_RES2_HEIGHT);

//	if (g_execArg==1)
//	{
//		cprintf("g_execArg==1");
//		// fill buffer contents manually for return data
//		len = Chirp::serialize(g_chirpUsb, frame, SRAM1_SIZE, HTYPE(FOURCC('C','M','V','2')), HINT8(renderFlags), UINT16(CAM_RES2_WIDTH), UINT16(CAM_RES2_HEIGHT), UINTS8_NO_COPY(CAM_RES2_WIDTH*CAM_RES2_HEIGHT), END);
//		// write frame after chirp args
//		cam_getFrame(frame+len, SRAM1_SIZE-len, CAM_GRAB_M1R2, 0, 0, CAM_RES2_WIDTH, CAM_RES2_HEIGHT);
//		//inverceImage(CAM_RES2_WIDTH, CAM_RES2_HEIGHT, len, frame);
//		// tell chirp to use this buffer
//		g_chirpUsb->useBuffer(frame, len+CAM_RES2_WIDTH*CAM_RES2_HEIGHT);
//	}
//	else if (100<=g_execArg && g_execArg<200)
//	{
//		cprintf("100<=g_execArg && g_execArg<200");
//		fcc =  FOURCC('E','X',(g_execArg%100)/10 + '0', (g_execArg%10) + '0');
//		len = Chirp::serialize(g_chirpUsb, frame, SRAM1_SIZE, HTYPE(fcc), HINT8(renderFlags), UINT16(CAM_RES2_WIDTH), UINT16(CAM_RES2_HEIGHT), UINTS8_NO_COPY(CAM_RES2_WIDTH*CAM_RES2_HEIGHT), END);
//		// write frame after chirp args
//		cam_getFrame(frame+len, SRAM1_SIZE-len, CAM_GRAB_M1R2, 0, 0, CAM_RES2_WIDTH, CAM_RES2_HEIGHT);
//		//inverceImage(CAM_RES2_WIDTH, CAM_RES2_HEIGHT, len, frame);
//		// tell chirp to use this buffer
//		g_chirpUsb->useBuffer(frame, len+CAM_RES2_WIDTH*CAM_RES2_HEIGHT);
//	}
//	else
//	{
//		cprintf("sendCustom else");
//		cam_getFrameChirp(CAM_GRAB_M1R2, 0, 0, CAM_RES2_WIDTH, CAM_RES2_HEIGHT, g_chirpUsb);
//	}

}

int videoLoop()
{
	if (g_execArg==0){
//		cprintf("g_execArg==0");
		cam_getFrameChirp(CAM_GRAB_M1R2, 0, 0, CAM_RES2_WIDTH, CAM_RES2_HEIGHT, g_chirpUsb);
	}
	else 
	{
	//	cprintf("loop else");
		sendCustom();
	}
	return 0;
}
