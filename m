Return-Path: <labbott@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EB2B3D4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 16:44:27 +0000 (UTC)
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8C130806
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 16:44:27 +0000 (UTC)
Received: by mail-qt0-f196.google.com with SMTP id o15-v6so8834511qtk.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 09:44:27 -0700 (PDT)
To: Takashi Iwai <tiwai@suse.de>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
References: <1536142432.8121.6.camel@HansenPartnership.com>
	<s5hd0tsccdw.wl-tiwai@suse.de> <20180905133916.GA22160@puremoods>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <25765076-0a55-babc-cd34-dc5b0971d293@redhat.com>
Date: Wed, 5 Sep 2018 09:44:23 -0700
MIME-Version: 1.0
In-Reply-To: <20180905133916.GA22160@puremoods>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Distribution kernel
 bugzillas considered harmful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 09/05/2018 06:39 AM, Konstantin Ryabitsev wrote:
> On Wed, Sep 05, 2018 at 03:16:59PM +0200, Takashi Iwai wrote:
>>> Second suggestion is that the bugzillas need to say much more strongly
>>> that the reporter really needs to confirm the fix in upstream and do
>>> the bisection themselves (and ideally request the backport to stable
>>> themselves).
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
> It would be awesome to have a "bisect@home" type of thing with a similar
> idea like seti@home and folding@home. Have a central queue where
> developers can submit upstream commits and testcases, and a swarm of
> volunteer drones would grab and bisect-build them until the
> bug-introducing commit is identified and reported back.
> 
> I'll totally host the hell out of this.
> 

I played around with bisect scripts for Fedora a while ago but mostly
abandoned them due to lack of interest and fragility. I was attempting
to use the full Fedora patch set and spec file but making that work
for arbitrary kernel commits was a pain.

Developers usually have no problem building and bisecting kernels,
it's non-kernel developers who often struggle with bisection.
One idea that I haven't followed up on was to extend the existing
targets for building distro packages to just build the source
side of things and then take advantage of existing environments
(e.g. COPR) to build the package binaries. I'd love a web interface
that would handle some of this automatically but, again, lack of
resources and knowledge of web frameworks.

Thanks,
Laura
