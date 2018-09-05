Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A7C63EC1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 20:15:01 +0000 (UTC)
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 536797FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 20:15:01 +0000 (UTC)
Received: by mail-io0-f193.google.com with SMTP id y12-v6so6999803ioj.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 13:15:01 -0700 (PDT)
Date: Wed, 5 Sep 2018 16:15:33 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Laura Abbott <labbott@redhat.com>
Message-ID: <20180905201533.GA6117@chatter>
References: <1536142432.8121.6.camel@HansenPartnership.com>
	<s5hd0tsccdw.wl-tiwai@suse.de> <20180905133916.GA22160@puremoods>
	<25765076-0a55-babc-cd34-dc5b0971d293@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <25765076-0a55-babc-cd34-dc5b0971d293@redhat.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Wed, Sep 05, 2018 at 09:44:23AM -0700, Laura Abbott wrote:
>>It would be awesome to have a "bisect@home" type of thing with a 
>>similar
>>idea like seti@home and folding@home. Have a central queue where
>>developers can submit upstream commits and testcases, and a swarm of
>>volunteer drones would grab and bisect-build them until the
>>bug-introducing commit is identified and reported back.
>>
>>I'll totally host the hell out of this.
>>
>Developers usually have no problem building and bisecting kernels,
>it's non-kernel developers who often struggle with bisection.
>One idea that I haven't followed up on was to extend the existing
>targets for building distro packages to just build the source
>side of things and then take advantage of existing environments
>(e.g. COPR) to build the package binaries. I'd love a web interface
>that would handle some of this automatically but, again, lack of
>resources and knowledge of web frameworks.

I'm excited that kernelci.org is coming on board as a full-fledged Linux 
Foundation project, since I'm hoping that their charter would include 
funding this kind of development. [1] I was already chatting with Kevin 
about some of the cool things we could do to make various 
CI/fuzzing/bug-reporting tools more streamlined, so I'll add "bisecting 
as a service" to my list of suggestions for the glorious kernel CI tool 
of the future. :)

-K

[1] I don't bring this up too often, but kernel.org's official 
organizational purpose is "to distribute the Linux kernel and other Open 
Source software to the public without charge" -- so drifting too far 
away from such activity could potentially jeopardize its legal standing 
as far as non-profit filing paperwork is concerned. This is why we can 
organize funding for things like public-inbox and lore.kernel.org, but 
not other things that wouldn't be overall related to "distributing the 
Linux kernel free of charge."
