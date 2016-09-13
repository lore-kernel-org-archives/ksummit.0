Return-Path: <joe@perches.com>
Message-ID: <1473804840.32273.8.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Jonathan Corbet <corbet@lwn.net>, Josh Triplett <josh@joshtriplett.org>
Date: Tue, 13 Sep 2016 15:14:00 -0700
In-Reply-To: <20160913140322.3ccad27c@lwn.net>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linux-foundation.org, Jean Delvare <jdelvare@suse.de>
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

On Tue, 2016-09-13 at 14:03 -0600, Jonathan Corbet wrote:
> On Tue, 13 Sep 2016 12:45:20 -0700 Josh Triplett <josh@joshtriplett.org> wrote:
> > On Tue, Sep 13, 2016 at 08:58:49PM +0200, Christian Borntraeger wrote:
> > > 3. CodingStyle seems to get changes which have no ACK or Reviewed-by that seem
> > > to be controversial.  e.g.
> > > https://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git/commit/Documentation/CodingStyle?id=865a1caa4b6b886babdd9d67e7c3608be4567a51
> > > suggested to indent labels with a space, and was then immediately followed by
> > > patches. Is there a process in place to verify and challenge such changes?  
> > Ideally, that should come up during review of the CodingStyle patch.
> > Changes shouldn't go into CodingStyle except to document existing
> > process and unwritten rules, or to document the results of a discussion
> > and consensus.  That particular change to CodingStyle should have been
> > rejected, and should be reverted.
> 
> 
> 
> 
> So I'm quite reluctant to take CodingStyle patches for just this reason;
> *I* certainly don't want to be the one dictating style for the kernel, but
> I'm not really sure who does.
[]
> (FWIW, I'm not really sure how I came to take the one mentioned above, I
> guess I was having a bad day.  The space-before-label rule strikes me as
> strange at best...)

The space-before-label rule should be removed.

It's a silly work-around rule for those that don't like
to see labels in a diff instead of a function name.

A new .gitattributes patch from Jean Delvare fixes that.

References:

https://lkml.org/lkml/2011/8/29/410
https://lkml.org/lkml/2016/9/6/445
https://lkml.org/lkml/2016/9/7/316
