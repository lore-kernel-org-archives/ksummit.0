Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 09598412
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 02:03:37 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5E12B1BE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 02:03:36 +0000 (UTC)
Date: Tue, 13 Sep 2016 19:03:32 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20160914020332.GA9558@cloud>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
	<4691924.fimvUkKjuv@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4691924.fimvUkKjuv@vostro.rjw.lan>
Cc: ksummit-discuss@lists.linux-foundation.org, Joe Perches <joe@perches.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] checkpatch/Codingstyle and
 trivial patch spam
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 14, 2016 at 01:49:13AM +0200, Rafael J. Wysocki wrote:
> On Tuesday, September 13, 2016 02:03:22 PM Jonathan Corbet wrote:
> > On Tue, 13 Sep 2016 12:45:20 -0700
> > Josh Triplett <josh@joshtriplett.org> wrote:
> > 
> > > On Tue, Sep 13, 2016 at 08:58:49PM +0200, Christian Borntraeger wrote:
> > > > 3. CodingStyle seems to get changes which have no ACK or Reviewed-by that seem
> > > > to be controversial.  e.g.
> > > > https://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git/commit/Documentation/CodingStyle?id=865a1caa4b6b886babdd9d67e7c3608be4567a51
> > > > suggested to indent labels with a space, and was then immediately followed by
> > > > patches. Is there a process in place to verify and challenge such changes?  
> > > 
> > > Ideally, that should come up during review of the CodingStyle patch.
> > > Changes shouldn't go into CodingStyle except to document existing
> > > process and unwritten rules, or to document the results of a discussion
> > > and consensus.  That particular change to CodingStyle should have been
> > > rejected, and should be reverted.
> > 
> > So I'm quite reluctant to take CodingStyle patches for just this reason;
> > *I* certainly don't want to be the one dictating style for the kernel, but
> > I'm not really sure who does.  In my time as the docs maintainer I've only
> > applied two patches there that constitute any sort of rule change - this
> > one and a78a136fa9337fdc25fdbaa2d253f9b4dc90ad44.  
> > 
> > In general, I would welcome advice on how any future rule-change patches
> > should be reviewed.
> 
> I agree with Josh that CodingStyle should reflect the existing practice
> (present in the majority of the kernel source) or a broad consensus.
> 
> While the "existing practice" case is relatively simple (it boils down to
> demonstrating that the given rule is in fact followed in practice in the
> majority of the kernel source), the "broad consensus" one is not as
> straightforward.  It looks like a Kernel Summit discussion or equivalent
> would be required each time to be honest ...

I suspect a mailing list discussion might suffice, if enough people
weigh in with feedback.

> In any case, it might be good to state somewhere that CodingStyle is a
> guidance for new code and not a prescription for how all of the kernel code
> must look like.

Yes, the preface of the document should explicitly mention this.  "Do
not mass-reformat existing code, even if it doesn't follow these
guidelines; doing so creates noise in version control history and makes
patches fail to apply."
