Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2FFD9CB2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 07:54:03 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BB6F82C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 07:54:02 +0000 (UTC)
Date: Mon, 10 Sep 2018 09:53:59 +0200
From: Jan Kara <jack@suse.cz>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20180910075359.GB26110@quack2.suse.cz>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<2534be10-2e70-6932-39c1-7caca2cff044@roeck-us.net>
	<4990d2c1-6f26-0500-9afa-986a61fce3bf@redhat.com>
	<20180907150623.GH16300@sasha-vm>
	<20180907213212.xrgsle6modrz6ss5@mwanda>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180907213212.xrgsle6modrz6ss5@mwanda>
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

On Sat 08-09-18 00:32:13, Dan Carpenter wrote:
> On Fri, Sep 07, 2018 at 03:06:24PM +0000, Sasha Levin via Ksummit-discuss wrote:
> > Let me use the CoreOS example here again. Here are the 5 user visible
> > stable regressions they had this year:
> > 
> > 8844618d8aa ("ext4: only look at the bg_flags field if it is valid")
> 
> The fix was 501228470077 ("ext4: fix check to prevent initializing
> reserved inodes").  The bug was found by running the test suite but with
> nojournal?
 
Yeah, this could have been caught by automatic testing ext4 people do, just
the configuration it happens in was not among the tested ones... The test
matrix is too big to test everything so only common configs get tested.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
