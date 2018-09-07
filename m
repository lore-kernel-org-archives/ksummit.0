Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BA6D2EFC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 20:24:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 677C87FD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 20:24:29 +0000 (UTC)
Date: Fri, 7 Sep 2018 17:24:23 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Message-ID: <20180907172423.1c11e1be@coco.lan>
In-Reply-To: <20180905201533.GA6117@chatter>
References: <1536142432.8121.6.camel@HansenPartnership.com>
	<s5hd0tsccdw.wl-tiwai@suse.de> <20180905133916.GA22160@puremoods>
	<25765076-0a55-babc-cd34-dc5b0971d293@redhat.com>
	<20180905201533.GA6117@chatter>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

Em Wed, 5 Sep 2018 16:15:33 -0400
Konstantin Ryabitsev <konstantin@linuxfoundation.org> escreveu:

> I'm excited that kernelci.org is coming on board as a full-fledged Linux 
> Foundation project, since I'm hoping that their charter would include 
> funding this kind of development. [1] I was already chatting with Kevin 
> about some of the cool things we could do to make various 
> CI/fuzzing/bug-reporting tools more streamlined, so I'll add "bisecting 
> as a service" to my list of suggestions for the glorious kernel CI tool 
> of the future. :)

Kernel-ci seems interesting. Yet, 1/3 of the Kernel patches are drivers.
At least for media stuff, IMO, CI is too far away from our needs, as one
would need some real hardware to do some testing stuff (like for example, 
some webcams and some ways to check if the webcam support is actually
working). To make it worse, there are a wide variety of different hardware
with different features and their quirk needs. I suspect that similar
troubles would affect sound devices as well.

It could be worth to have some discussions with CI people with regards
to how it can better cope with driver's subsystem needs.

Thanks,
Mauro
