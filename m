Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 52B7694D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 12:40:43 +0000 (UTC)
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B0EB512D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 12:40:42 +0000 (UTC)
Date: Wed, 20 Jul 2016 09:40:35 -0300
From: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20160720094035.738244f8@recife.lan>
In-Reply-To: <CAKMK7uHOmxoRFr2j+KrtVAud1iQq3ySDQMz6rZOLwYVDorNeBA@mail.gmail.com>
References: <CAKMK7uHOmxoRFr2j+KrtVAud1iQq3ySDQMz6rZOLwYVDorNeBA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Grant Likely <grant.likely@linaro.org>,
	Markus Heiser <markus.heiser@darmarit.de>, "Nikula,
	Jani" <jani.nikula@linux.intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] kernel documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

HI Daniel,

Em Wed, 20 Jul 2016 13:56:31 +0200
Daniel Vetter <daniel.vetter@ffwll.ch> escreveu:

> In 4.8 we have a shiny new kernel doc toolchain:
> 
> https://lwn.net/Articles/692705/
> 
> I think it'd be great if interested parties (might be just a hallway
> track) sit together and figure out how to best go about converting all
> the existing docs over, and how to link it all together. I think we
> pretty much have agreement that the docbook horror show needs to die,
> but there's lots of other documentation that I think would be great to
> include in the overall (cross-linked!) kernel docs.
> 
> People who would be great to be there:
> - Jon Corbet
> - Mauro Carvalho
> - Jani Nikula
> - Markus Heiser
> - maybe Grant Likely, he made noises about sphinx/rst too
> 
> I think converting/polishing docs would also serve well as kernel
> newbie task in opw or gsoc or wherever, that might be another
> interested group. And anyone else who wants to convert over docs for
> their subsystem.
> 
> Mostly I'm just sending this out to gauge interest.

Yeah, I think we should do it. Just not sure if this is a TECH
TOPIC or a CORE one ;) Documentation will sooner or later touch
all subsystems.  So, I guess we should at least highlight some
things to the core group (Or at least do a lightning talk there).

Yet, a TECH topic would be interesting for us to discuss some
details about that.

Regards,
Mauro
