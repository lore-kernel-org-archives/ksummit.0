Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4738D93E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 18:58:04 +0000 (UTC)
Received: from pmta2.delivery5.ore.mailhop.org
	(pmta2.delivery5.ore.mailhop.org [54.186.218.12])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id B2B42162
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 18:58:03 +0000 (UTC)
Date: Fri, 10 Jul 2015 18:58:00 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20150710185800.GW23515@io.lakedaemon.net>
References: <20150708145315.29030a75@gandalf.local.home>
	<559D8336.3040802@roeck-us.net>
	<1436414798.23558.3.camel@ellerman.id.au>
	<559EBD4C.6030502@gmail.com> <20150709190640.GC788@roeck-us.net>
	<20150709194734.GG9169@vmdeb7> <20150709201315.GF9417@thunk.org>
	<20150709205049.GB5154@roeck-us.net>
	<20150709214718.GG9417@thunk.org>
	<20150710182045.GA19854@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150710182045.GA19854@roeck-us.net>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org, jic23@jic23.retrosnub.co.uk
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 10, 2015 at 11:20:45AM -0700, Guenter Roeck wrote:
> On Thu, Jul 09, 2015 at 05:47:18PM -0400, Theodore Ts'o wrote:
> > On Thu, Jul 09, 2015 at 01:50:49PM -0700, Guenter Roeck wrote:
> > > 
> > > Earlier it was discussed how to improve the recognition of reviewers.
> > > Your comments seems to suggest the opposite, and may actually discourage
> > > reviewers. Why should I review Linux kernel code if that is seen
> > > by some as me trying to "game" the system ?
> > 
> > So I were designing an initial system that automatically scored
> > reviewers, I'd be looking to see, from a holistic point of view, how
> > many reviews were zero-length:
> > 
> > Reviewed-by: John Q. Random <seventeen@random.org>
> > 
> > ... and nothing else,
> > 
> > .... versus how many reviews had specific comments on various
> > different portions of the patch.  If possible, the automated system
> > would try to distinguish between comments that were just pointing out
> > whitespace issues (which would be a slight positive) with comments
> > that point out genuine design issues (this will be really hard to do
> > in an automated fashion, but a very sophisticated nueral network[1]
> > mgiht be able to hack it).
> > 
> > I might also try using some kind scheme that counted the number of
> > words in a review (stripping out lines of patch or commit description
> > that the review was a reply to), etc.  But of course, if it was public
> > knowledge that the system was just stripping out the original e-mail,
> > and then just doing a "wc -w", then people would game the system by
> > adding list of random words at the bottom of the review.
> > 
> > And, of course, I'd have the system give a huge negative score if a
> > commit that got a "LGTM" positive review caused a bug that required
> > the patch to be reverted.  *That* signal, at least, would be hard to
> > game, and would hopefuly encourage people to actually take time
> > reviewing a commit, and not blindly slapping a reviewed-by on a commit
> > they don't understand.
> > 
> > You see?  It's not that reviews in and of themselves are attempts to
> > game the system ---- just so long as they are genuine reviews.  If
> > there is evidence that the reviews are issued within seconds of the
> > original patch going out, with a Reviewed-by: line and nothing else,
> > what would *you* think about the quality of that review?
> > 
> Agreed. On the other side, is gaming really a problem with kernel code
> reviews ? Sure, a search engine provider will have to look out for
> abuse patterns, but for code reviews I am not sure if it is worth the
> effort. I would suspect that it is much more likely that the simple
> "wc -w" approach should provide you with worthy candidates for the KS.
> Since you are not dealing with hundreds or thousands of candidates,
> I'd assume you'll do a hand screening anyway, and quickly identify any
> gamers. I'd be quite surprised if there are any, though.

I've personally seen it, and I don't think I'm alone.  It seems to follow
a pattern of:

 - Manager/HR thinks counting tags is a useful metric (#!@$ laziness).
 - tag-count becomes an evaluation item.
 - Pay raises are affected.
 - patch submitters do the obvious.
 - maintainers weep and die a little inside.

The easy ones to spot are multiple-S-o-bs.  I've actually been told "No,
he didn't write any code, I was just trying to help him out."

The hard ones are when a patch was developed by a company, say a new
driver.  On the first patch submission, there's a Reviewed-by tag for
someone I've never seen on the list.  He *could* be the HW engineer that
designed the IP block, or he could be the likable guy that got a bad
eval last time around.  We don't know.

I keep those tags for one simple reason.  If a bisect lands on that
commit, he'll be in the list of emails for trying to figure out what
went wrong.  imo, it's better to include him to help diagnose a problem
than to play catch-up "Who else remembers this commit?", then
Cc/Fwd/Bounce during triage.  Which comes back to my "Tags are a
responsibility, not a reward."

As has been expressed elsewhere, it also depends on who's doing the
patch submitting.  There's certainly an element of trust to all of this.
Unfamiliar submitters with red flags get asked awkward questions.

thx,

Jason.
