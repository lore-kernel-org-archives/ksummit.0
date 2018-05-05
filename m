Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3F74922
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  5 May 2018 05:27:23 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0106.outbound.protection.outlook.com [104.47.36.106])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A023518A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  5 May 2018 05:27:22 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>, James Bottomley
	<James.Bottomley@HansenPartnership.com>, Greg KH
	<gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Date: Sat, 5 May 2018 05:27:20 +0000
Message-ID: <20180505052717.GY18390@sasha-vm>
References: <20180503173422.GR18390@sasha-vm>
	<20180503182039.GC30522@ZenIV.linux.org.uk>
	<8669.1525427874@warthog.procyon.org.uk> <87fu377gbu.fsf@intel.com>
	<20180504130932.GI29205@thunk.org> <20180504174055.GF4649@kroah.com>
	<20180504211317.GK29205@thunk.org>
	<1525469881.4114.5.camel@HansenPartnership.com>
	<20180504215111.GX18390@sasha-vm> <20180504233542.GM29205@thunk.org>
In-Reply-To: <20180504233542.GM29205@thunk.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <BE6FE16E71934946B152AC6C5360239D@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 04, 2018 at 07:35:42PM -0400, Theodore Y. Ts'o wrote:
>On Fri, May 04, 2018 at 09:51:14PM +0000, Sasha Levin wrote:
>> I don't have an objection to moving this to it's own tag. It will make
>> my scripts somewhat simpler for sure.
>
>It's not a matter "moving this it's own tag", but creating a new tag
>--- because what is in the docs is a lie.  It does not describe what
>we do today.  And current practice is the reality, not what is in the
>docs.

I'm really confused here. What do you mean with "not describe what we do
today"?

The doc allows for three ways to tag a patch:

1. Empty tag: "Cc: stable@vger.kernel.org"
2. With a version, quoting from the doc:

	Also, some patches may have kernel version prerequisites.  This can be
	specified in the following format in the sign-off area:

	     Cc: <stable@vger.kernel.org> # 3.3.x

	The tag has the meaning of:

	     git cherry-pick <this commit>

	For each "-stable" tree starting with the specified version.

3. With a prereq commit, which is in the form of:

	Cc: <stable@vger.kernel.org> # 3.3.x: a1f84a3: sched: Check for idle

We expect this to be used rarely used, and indeed it's not used as much.

>As to whether we should create a new tag to support explicit
>dependencies, I'll leave that between you and Greg K-H and the rest of
>the stable maintainers.  :-)=
