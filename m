Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5DE40121D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 16:09:49 +0000 (UTC)
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0120.outbound.protection.outlook.com [104.47.42.120])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A7DC47A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 16:09:48 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Laura Abbott <labbott@redhat.com>
Date: Fri, 7 Sep 2018 16:09:46 +0000
Message-ID: <20180907160945.GI16300@sasha-vm>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<2534be10-2e70-6932-39c1-7caca2cff044@roeck-us.net>
	<4990d2c1-6f26-0500-9afa-986a61fce3bf@redhat.com>
	<20180907150623.GH16300@sasha-vm>
	<9fb15d7c-c59f-ee21-9c30-6d81d53a1456@redhat.com>
In-Reply-To: <9fb15d7c-c59f-ee21-9c30-6d81d53a1456@redhat.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <5B36493BAD5F5D449790C97CEC6D75E0@namprd21.prod.outlook.com>
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

On Fri, Sep 07, 2018 at 08:54:54AM -0700, Laura Abbott wrote:
>I don't disagree that those patches look like they should go in stable.
>My issue is that a stable release went out with those patches in them
>when they were buggy. We're very good at finding patches for stable
>which fix bugs. We're less good at finding buggy patches themselves
>in stable. Can we make more of a distinction between patches that
>are proposed for stable (all of those patches) and patches that
>have had enough testing to be included in stable (probably not those
>patches)? I'd like to answer the question of what more could be done
>(testing?) to identify those patches which are tagged as fixing
>bugs but are also still buggy.

I agree.

What are your thoughts about a stable-next branch of sorts where we can
push stable tagged fixes as soon as they hit either Linus's tree or
maybe the pending-fixes branch in linux-next?

This way we'll have a longer term stable tree to test, and Greg can just
cut releases from there.=
