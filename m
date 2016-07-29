Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3600E8FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 10:59:53 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AD7C2276
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 10:59:52 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 29 Jul 2016 14:00:04 +0300
Message-ID: <44550834.xrXSv8h38b@avalon>
In-Reply-To: <20160720171026.7d9d2c2b@lwn.net>
References: <CAKMK7uHOmxoRFr2j+KrtVAud1iQq3ySDQMz6rZOLwYVDorNeBA@mail.gmail.com>
	<20160720171026.7d9d2c2b@lwn.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Markus Heiser <markus.heiser@darmarit.de>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>, "Nikula,
	Jani" <jani.nikula@linux.intel.com>, Grant Likely <grant.likely@linaro.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] kernel documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday 20 Jul 2016 17:10:26 Jonathan Corbet wrote:
> On Wed, 20 Jul 2016 13:56:31 +0200 Daniel Vetter wrote:
> > I think it'd be great if interested parties (might be just a hallway
> > track) sit together and figure out how to best go about converting all
> > the existing docs over, and how to link it all together.
> 
> I had thought about proposing a similar topic.  I think it could also be
> useful to have a brief session on how the new stuff works.

I'd be more interested in that than in a session that discusses the process of 
converting existing documentation. It's up to each subsystem to move away from 
DocBook, I don't really see what we would have to discuss there.

That being said, in order to make the documentation consistent, we'll need 
some level of bikeshedding to decide on guidelines for maintainers and 
developers. I don't want to spend the kernel summit bikeshedding, but maybe a 
high-level discussion on what we need could be useful.

-- 
Regards,

Laurent Pinchart
