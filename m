Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2046EC9A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 21:44:02 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0116.outbound.protection.outlook.com [104.47.36.116])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 914D47D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 21:44:01 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Date: Fri, 7 Sep 2018 21:43:58 +0000
Message-ID: <20180907214357.GK16300@sasha-vm>
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
In-Reply-To: <20180907213212.xrgsle6modrz6ss5@mwanda>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <FEF00F8078C5544EA92E6A5D103C5A16@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
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

On Sat, Sep 08, 2018 at 12:32:13AM +0300, Dan Carpenter wrote:
>On Fri, Sep 07, 2018 at 03:06:24PM +0000, Sasha Levin via Ksummit-discuss =
wrote:
>> Let me use the CoreOS example here again. Here are the 5 user visible
>> stable regressions they had this year:
>>
>> 8844618d8aa ("ext4: only look at the bg_flags field if it is valid")
>
>The fix was 501228470077 ("ext4: fix check to prevent initializing
>reserved inodes").  The bug was found by running the test suite but with
>nojournal?

It looks like it was found when people tried mounting 3TB+ filesystems
and failed.

>> f46ecbd97f5 ("cifs: Fix slab-out-of-bounds in send_set_info() on SMB2
>> ACE setting")
>
>What was the bug with this one?

https://github.com/coreos/bugs/issues/2480

>> a6f81fcb2c3 ("tcp: avoid integer overflows in tcp_rcv_space_adjust()")
>
>My understanding was that this one was applied without a patch it
>depended on? 02db55718d53 ("tcp: do not overshoot window_clamp in
>tcp_rcv_space_adjust()")

Right. I would thing this would get caught using automatic regression as
apparently it reduced network throughput down to 300bytes/sec.

>> 7b2ee50c0cd ("hv_netvsc: common detach logic")
>
>The patch summary sells this as a cleanup but it's a bugfix.  The fix
>for it was commit 52acf73b6e9a ("hv_netvsc: Fix a network regression
>after ifdown/ifup").  It took two months for anyone to notice the if
>up/down sometimes fails.  Are there any standard tests for network
>drivers?  There is no way we're going to hold back the patch for two
>months.

These examples were less about "keep it waiting longer" and more to show
that it'll be hard and/or pointless trying to restrict what goes in
Stable as regressions come from commits that are "obviously" stable
material.

>> f599c64fdf7 ("xen-netfront: Fix race between device setup and open")
>
>Two bugs:
>cb257783c292 ("xen-netfront: Fix mismatched rtnl_unlock")
>45c8184c1bed ("xen-netfront: Update features after registering netdev")
>
>We should add a static checker warning to prevent the first one from
>re-occuring.  Just send an email to Julia or me.  For the second one, it
>really feels like we should have a test suite to see if setting the MTU
>works.

It appears that there's a lot missing with how network devices are
getting tested.

--
Thanks,
Sasha

>> a93bf0ff449 ("vxlan: update skb dst pmtu on tx path")
>
>The fix was commit f15ca723c1eb ("net: don't call update_pmtu
>unconditionally").
>
>Why does this patch add a NULL check for "dst"?  Is that required?  The
>original code generated a static checker warning for me that "error:
>potential null dereference 'dst'.  (skb_dst returns null)".  I have 54
>places where the skb_dst() return isn't checked but I don't really
>understand the code so I ignore those.
>
>regards,
>dan carpenter=
