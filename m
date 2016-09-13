Return-Path: <corbet@lwn.net>
Date: Tue, 13 Sep 2016 14:03:22 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20160913140322.3ccad27c@lwn.net>
In-Reply-To: <20160913194520.GA8071@cloud>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linux-foundation.org, Joe Perches <joe@perches.com>
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

On Tue, 13 Sep 2016 12:45:20 -0700
Josh Triplett <josh@joshtriplett.org> wrote:

> On Tue, Sep 13, 2016 at 08:58:49PM +0200, Christian Borntraeger wrote:
> > 3. CodingStyle seems to get changes which have no ACK or Reviewed-by that seem
> > to be controversial.  e.g.
> > https://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git/commit/Documentation/CodingStyle?id=865a1caa4b6b886babdd9d67e7c3608be4567a51
> > suggested to indent labels with a space, and was then immediately followed by
> > patches. Is there a process in place to verify and challenge such changes?  
> 
> Ideally, that should come up during review of the CodingStyle patch.
> Changes shouldn't go into CodingStyle except to document existing
> process and unwritten rules, or to document the results of a discussion
> and consensus.  That particular change to CodingStyle should have been
> rejected, and should be reverted.

So I'm quite reluctant to take CodingStyle patches for just this reason;
*I* certainly don't want to be the one dictating style for the kernel, but
I'm not really sure who does.  In my time as the docs maintainer I've only
applied two patches there that constitute any sort of rule change - this
one and a78a136fa9337fdc25fdbaa2d253f9b4dc90ad44.  

In general, I would welcome advice on how any future rule-change patches
should be reviewed.

(FWIW, I'm not really sure how I came to take the one mentioned above, I
guess I was having a bad day.  The space-before-label rule strikes me as
strange at best...)

jon
