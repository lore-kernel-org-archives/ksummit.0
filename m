Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 66EE48A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 13:41:35 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E72732AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 13:41:34 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 01 Aug 2016 16:41:34 +0300
Message-ID: <1491859.MaHxabKd3d@avalon>
In-Reply-To: <20160729174035.5967f2bf@gandalf.local.home>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160729210739.GI1494@piout.net>
	<20160729174035.5967f2bf@gandalf.local.home>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Steven,

On Friday 29 Jul 2016 17:40:35 Steven Rostedt wrote:
> On Fri, 29 Jul 2016 23:07:39 +0200 Alexandre Belloni wrote:
> > Well, some tests depend on hardware availability but any hardware can
> > work. I'm obviously thinking about RTCs. rtctest can run with any RTC.
> > Also, one of my question here is whether kselftests could or couldn't be
> > destructive. Running rtctest will currently overwrite the next alarm
> > that may be set in an RTC. I was also planning to extend it in a way
> > that will unfortunately also overwrite the current date and time.
> > I'm not sure this is OK, especially for people that want to run those
> > tests automatically.
> 
> Anything that can cause harm to the system probably shouldn't be added
> to kselftests. Unless there's a way you can record what the settings
> were, and reset them after the test.

Agreed. If we could standardize the test framework enough to make out-of-tree 
tests possible, the kselftest unit tests and the out-of-tree tests could 
implement the same interface and be handled by the same test runners. 
kselftest could then be a standard library of core tests maintained in the 
kernel, with additional tests available from different locations.

-- 
Regards,

Laurent Pinchart
