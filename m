Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7AC64D0B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 13:20:45 +0000 (UTC)
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0D84470D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 13:20:44 +0000 (UTC)
Date: Sat, 8 Sep 2018 16:20:36 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180908131959.im6d3kacm3j4vjv7@mwanda>
References: <CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<2534be10-2e70-6932-39c1-7caca2cff044@roeck-us.net>
	<4990d2c1-6f26-0500-9afa-986a61fce3bf@redhat.com>
	<20180907150623.GH16300@sasha-vm>
	<20180907213212.xrgsle6modrz6ss5@mwanda>
	<20180907214357.GK16300@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180907214357.GK16300@sasha-vm>
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

On Fri, Sep 07, 2018 at 09:43:58PM +0000, Sasha Levin via Ksummit-discuss wrote:
> >> f46ecbd97f5 ("cifs: Fix slab-out-of-bounds in send_set_info() on SMB2
> >> ACE setting")
> >
> >What was the bug with this one?
> 
> https://github.com/coreos/bugs/issues/2480
> 

So this is another one where we backported a patch without pulling the
earlier changes.

regards,
dan carpenter
