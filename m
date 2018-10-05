Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EDEE6149B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 09:57:04 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4C3CF712
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 09:57:04 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 05 Oct 2018 12:57:18 +0300
Message-ID: <2795844.PlkHHhbf7z@avalon>
In-Reply-To: <87efd4px5a.fsf@intel.com>
References: <CAKON4OxHUoVQ3zso=avoGE35MwWnkGaU13R_qPaw9zAqMVCDxQ@mail.gmail.com>
	<20181005075048.GA24138@localhost> <87efd4px5a.fsf@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Ksummit-discuss] New CoC and Brendan Eich
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Jani,

On Friday, 5 October 2018 12:20:49 EEST Jani Nikula wrote:
> On Fri, 05 Oct 2018, Josh Triplett <josh@joshtriplett.org> wrote:
> > On Fri, Oct 05, 2018 at 09:12:40AM +0200, Geert Uytterhoeven wrote:
> >> BTW, should we start sending out patches to remedy parts in the CoC that
> >> are not appropriate/suited/wanted for the Linux kernel project?
> >> So far I have seen many suggestions to improve it, but no formal patches
> >> for Documentation/process/code-of-conduct.rst.
> >> I'm afraid it is already causing a chilling effect...
> > 
> > There have also been very few patches to the top-level COPYING, modulo
> > some recent SPDX-inspired reordering. The right place for patches is
> > upstream; the right place for clarifications on application would be in
> > a separate Documentation/process/code-of-conduct-process.rst or similar.
> 
> Agreed, as noted before.

I'm afraid I disagree in this particular instance. We first need to evaluate 
a) whether we have picked the right upstream, and b) whether the upstream we 
base our code of conduct on has the same goals as yours. There are valid 
reasons for software to fork, I don't see why there could be valid reasons for 
codes of conduct to fork.

Note that I'm not advocating forking or not forking, I'm saying that the 
discussion shouldn't be avoided. Several concerns have been raised that the 
wording of the code of conduct, not its essence, doesn't apply very well to 
the community due to technical differences in the management of the project, 
these need to be addressed. Other concerns have been raised that touch to the 
essence of the code of conduct, and I believe these need to be discussed. Only 
when the necessary discussions will have taken place, and a decision on how to 
address the concerns taken, should we then decide whether to fork or 
contribute upstream.

> Also, given the way the new CoC was introduced, I think the discussion
> on modifying code-of-conduct.rst locally is mostly futile until we hear
> some direction straight from the horse's mouth.

I agree that we are lacking an official story. However, I share concerns about 
how the new code of conduct has been imposed (by who ?) without consulting the 
community, and I think we need a better process to decide *together* what we 
want to do *together*. In that regard discussing how we want to address 
community management in general is a public issue that needs to be discussed 
among us. I still believe that democracy is better than dictatorship, 
including when it comes to deciding codes of conduct.

> However, nothing prevents anyone from proposing improvements directly to
> Contributor Covenant upstream.

Again I believe this should be discussed inside our community first, and then 
possibly proposed upstream when we reach an agreement on what we want to do. 
Otherwise you'll have completely random, often half-though, proposals 
submitted upstream and nothing will happen. Let's not use this as an argument 
to muzzle all voices from our community members.

-- 
Regards,

Laurent Pinchart
