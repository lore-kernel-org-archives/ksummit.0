Return-Path: <viro@ftp.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F3218D6F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 04:18:25 +0000 (UTC)
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6DF1B623
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 04:18:25 +0000 (UTC)
Date: Fri, 7 Sep 2018 04:38:25 +0100
From: Al Viro <viro@ZenIV.linux.org.uk>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180907033825.GY19965@ZenIV.linux.org.uk>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180907014930.GE16300@sasha-vm>
Sender: Al Viro <viro@ftp.linux.org.uk>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 07, 2018 at 01:49:31AM +0000, Sasha Levin via Ksummit-discuss wrote:

> This is a *huge* reason why we see regressions in Stable. Take a look at
> https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2018-September/005287.html
> for a list of recent user visible regressions the CoreOS folks have
> observed this year. Do you want to know when they were merged? Let me
> help you: all but one were merged in -rc5 or later.

	Umm...  Looking.  Looks like the nastiest one in there is a TCP
regression, caused by inclusion of "tcp: avoid integer overflows in
tcp_rcv_space_adjust()" in 4.14.48.  Fixed by inclusion of "tcp: do not
overshoot window_clamp in tcp_rcv_space_adjust()" into 4.14.50.  

	Note that in mainline the latter is actually a sodding *PARENT*
of the former, so no amount of soaking in, testing, etc. would have caught
the problem.  Simply because there wasn't one.

	That, presumably, is the one exception you mention?  I honestly
went by the apparent impact - digging through their (github) user interface
is not my idea of fun ;-/

	Could you post summaries of the other 4?  Or links to such, if that
got covered at some point in that thread...
