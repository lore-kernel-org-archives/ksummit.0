Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C1BE4910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 12:03:58 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 32517160
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 12:03:56 +0000 (UTC)
Date: Wed, 20 Jul 2016 14:03:51 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
In-Reply-To: <CAKMK7uHOmxoRFr2j+KrtVAud1iQq3ySDQMz6rZOLwYVDorNeBA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1607201402590.3212@hadrien>
References: <CAKMK7uHOmxoRFr2j+KrtVAud1iQq3ySDQMz6rZOLwYVDorNeBA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Grant Likely <grant.likely@linaro.org>,
	Markus Heiser <markus.heiser@darmarit.de>, "Nikula,
	Jani" <jani.nikula@linux.intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] kernel documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On Wed, 20 Jul 2016, Daniel Vetter wrote:

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

If anyone wants to mentor an outreachy intern on this topic, let me know.
There would be a new round of internships starting in December.

julia
