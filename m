Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A65D194E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 11:57:39 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 25CF315B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 11:57:39 +0000 (UTC)
Received: from avalon.localnet (85-23-193-79.bb.dnainternet.fi [85.23.193.79])
	by galahad.ideasonboard.com (Postfix) with ESMTPSA id 3397020051
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 13:57:33 +0200 (CEST)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 29 Jul 2016 14:57:51 +0300
Message-ID: <2030690.Q1F2ncv1Ea@avalon>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [Ksummit-discuss] Self-nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

I would like to nominate myself for the Kernel Summit 2016.

My current areas of activity in the Linux kernel are the media (for media 
controller and V4L2) and graphics subsystems, where I hack on both the core 
frameworks and device drivers.

The topics proposed this year that I'm particularly interested in are

- Probe ordering, device dependencies and asynchronous probing, especially 
given their direct impact on embedded media and graphics devices (in the 
functional sense) that are usually made of multiple kernel devices (in the 
struct device sense).

- Sensors and subsystem boundaries. As the co-author of the media controller 
API (with Sakari Ailus, based on a proposal from Hans Verkuil) I've tried to 
bridge the gap between the media, sound and graphics subsystems for a long 
time. Lessons learnt there can be of interest to the other areas of the kernel 
now being impacted by the same issue.

- Testing infrastructure and unit testing, wearing both my programmer and 
technical evangelist hats. This could overlap partially with the regression 
tracking topic.


If the documentation and maintainership topics get discussed (in sessions or 
during the hallway track) I would like to participate as well.

-- 
Regards,

Laurent Pinchart
