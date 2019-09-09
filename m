Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5E09BF22
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 10:44:23 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E990C76F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 10:44:22 +0000 (UTC)
Message-ID: <1568025855.6613.5.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Dave Airlie <airlied@gmail.com>, ksummit
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Mon, 09 Sep 2019 11:44:15 +0100
In-Reply-To: <CAPM=9tx7toB7Bsif6RDo51HNxcGbbHDPHD7DjmF9i+zs-J0HRQ@mail.gmail.com>
References: <CAPM=9tx7toB7Bsif6RDo51HNxcGbbHDPHD7DjmF9i+zs-J0HRQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] vague topic for maintainers summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2019-09-09 at 20:17 +1000, Dave Airlie wrote:
> This topic occured to me on one of the planes I've spent time on this
> weekend, so it's kinda vague and handwavy.
> 
> Methods for constructively saying No to large companies.
> 
> I feel it would be best suited for something like maintainer summit
> as people can speak freely without causing employer issues.
> 
> The idea would be to exchange ideas and discuss how to address large
> bodies of code or stacks that are misdesigned or have major issues
> that aren't suitable for stable inclusion, or are big additions to
> current drivers/layers, being submitted by large corporations with
> the expectations that we would land it because they designed it like
> that. I'm not sure if other maintainers face this sort of thing as
> regularly as I do, but just wondered if there was value in discussing
> it.

Having done this in SCSI for several drivers, there's definitely value
in discussing it, but the usual solution is to get trusted reviewers to
identify the design problem and recommend ways of fixing them.  The
main difficulty we have is getting people to do the reviews ... the
larger the code size the more difficult this is.  For most this all
goes amicably but, for a couple which were really important, I've
actually sometimes rewritten the code base myself (not that this should
ever be recommended or expected practice).

I haven't really found corporations attempting to apply pressure to get
their patches merged as is, although I've heard of others having this
problem.  My usual problem is that the creator of the patch is deeply
wedded to their design and doesn't want to change so it's an individual
rather than a corporate issue.

James
