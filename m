Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 964B4D9A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 10:37:57 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1214B7C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 10:37:56 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dave Airlie <airlied@gmail.com>
Date: Tue, 18 Sep 2018 13:38:09 +0300
Message-ID: <2174637.IVJC5EhCEq@avalon>
In-Reply-To: <CAPM=9tzSaQX7iVCH94jrM+xgEveY4B8+DwQSykiE3L0BM-s-Pw@mail.gmail.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<20180917115916.37fd5388@coco.lan>
	<CAPM=9tzSaQX7iVCH94jrM+xgEveY4B8+DwQSykiE3L0BM-s-Pw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: mchehab+samsung@kernel.org,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
	management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday, 18 September 2018 01:39:48 EEST Dave Airlie wrote:
> > This is a valid point: whatever development process is used, drive-by
> > contributors should be allowed to send e-mails without needing to
> > subscribe
> > (neither to a moderated list nor to a web-UI). I don't care how the
> > maintainer will handle such patches, provided that they will be properly
> > handled.
> 
> It really depends on what type of one-off contributor they are.
> 
> Setting up git send-email isn't trivial for everyone, if you are a
> gmail user and work for a company that doesn't embrace smtp so much,
> then having a webui and https git access will be a lot easier for
> one-off contributions.
> 
> Beware of thinking our setup with email is in any way simple for a
> newcomer to setup properly.

Would there be some value in creating new git-send-gmail or git-send-outlook 
scripts that would work around the issues with common mail providers ?

-- 
Regards,

Laurent Pinchart
