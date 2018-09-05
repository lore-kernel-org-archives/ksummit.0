Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AC24ED1C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:17:00 +0000 (UTC)
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0096.outbound.protection.outlook.com [104.47.40.96])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 45AD37A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:17:00 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Takashi Iwai <tiwai@suse.de>, James Bottomley
	<James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Wed, 5 Sep 2018 15:16:58 +0000
Message-ID: <20180905151657.GP16300@sasha-vm>
References: <1536142432.8121.6.camel@HansenPartnership.com>
	<s5hd0tsccdw.wl-tiwai@suse.de> <20180905133916.GA22160@puremoods>
In-Reply-To: <20180905133916.GA22160@puremoods>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <AE09080014999444B231DB1BAFF676AC@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Distribution kernel
 bugzillas	considered harmful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 05, 2018 at 09:39:16AM -0400, Konstantin Ryabitsev wrote:
>On Wed, Sep 05, 2018 at 03:16:59PM +0200, Takashi Iwai wrote:
>> > Second suggestion is that the bugzillas need to say much more strongly
>> > that the reporter really needs to confirm the fix in upstream and do
>> > the bisection themselves (and ideally request the backport to stable
>> > themselves).
>>
>> OK, distros definitely need to try hard not to annoy upstream devs.
>>
>> In the case of SUSE Kernel, we usually ask testing the latest
>> (more-or-less) vanilla kernel at first.  If it's an upstream problem,
>> then it's often tossed to the upstream.  If it's already addressed in
>> the upstream kernel, we take the responsibility for backports.  Asking
>> bisection by reporter is usually the last resort.
>>
>> It'd be helpful if we get any suggestion to improve the process.
>
>It would be awesome to have a "bisect@home" type of thing with a similar
>idea like seti@home and folding@home. Have a central queue where
>developers can submit upstream commits and testcases, and a swarm of
>volunteer drones would grab and bisect-build them until the
>bug-introducing commit is identified and reported back.
>
>I'll totally host the hell out of this.

I don't think KernelCI are too far on this front. They're already
working on auto bisection, so if there's an ability to add (simple)
testcases you'll be all set.

--
Thanks,
Sasha=
