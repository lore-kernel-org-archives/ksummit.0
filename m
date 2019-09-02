Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 02D59907
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  2 Sep 2019 22:22:47 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DEC555D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  2 Sep 2019 22:22:44 +0000 (UTC)
Date: Mon, 2 Sep 2019 18:22:40 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <20190902222240.GE3367@mit.edu>
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 03, 2019 at 06:42:55AM +1000, Dave Airlie wrote:
> On Friday, 30 August 2019, Bjorn Helgaas <helgaas@kernel.org> wrote:
> 
> > On Thu, Aug 29, 2019 at 11:17:20PM -0400, Theodore Y. Ts'o wrote:
> > > ...
> > > Are there some additional topics that you'd like to suggest that we
> > > discuss at the maintainer's summit?
> >
> > I don't have an effective workflow for managing incoming patches.  I
> > use a hodge-podge of patchwork, gmail, mutt, and ugly private scripts
> > to put patches on topic branches, review them, polish them, merge them
> > together into a "-next" branch, generate pull requests, etc.
> >
> > I wish there were a collection of the workflows and scripts people
> > use, maybe even in the kernel sources so they could be shared and
> > improved.  Some short screencasts could help visualize and pull things
> > together.  I know a lot of this stuff is "out there" somewhere, but
> > I'm not aware of any organized collection.
> 
> 
> These are quite drm specific but they do mean myself and Daniel can operate
> seamlessly, and all i915 and drm misc maintainers and committers use the
> same enforced workflow. We hope to move to gitlab at some point and may try
> and use the same interface or not.
> 
>  https://drm.pages.freedesktop.org/maintainer-tools/index.html
> 
> Happy to give more info at maintainer summit, but we have gotten negative
> feedback in the past from some community members who wanted to point out at
> length that drm didnt invent group maintainership first, i still have no
> idea of the relevancy of the comment.

Are there are other people who have interest in sharing their
workflow?  I'm wonder if it might be useful to schedule time during
the kernel summit, so it's open for more people to benefit from this
sharing?  (Also note that Kernel Summit track sessions will be video
taped for posterity, while Maintainer Summit discussions are *not*
recorded.)

					- Ted
