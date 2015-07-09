Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DB308BB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 19:45:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D2E09112
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 19:45:05 +0000 (UTC)
Date: Thu, 9 Jul 2015 12:44:56 -0700
From: Darren Hart <dvhart@infradead.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Message-ID: <20150709194456.GF9169@vmdeb7>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<559D8336.3040802@roeck-us.net>
	<1436414798.23558.3.camel@ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1436414798.23558.3.camel@ellerman.id.au>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	jic23@jic23.retrosnub.co.uk, ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
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

On Thu, Jul 09, 2015 at 02:06:38PM +1000, Michael Ellerman wrote:
> On Wed, 2015-07-08 at 13:08 -0700, Guenter Roeck wrote:
> > On 07/08/2015 11:53 AM, Steven Rostedt wrote:
> > > On Wed, 08 Jul 2015 09:00:32 +0100
> > > jic23@jic23.retrosnub.co.uk wrote:
> > >
> > >
> > >>> We can alter that somewhat.  We used to run a Maintainers lottery for
> > >>> the kernel summit ... we could instead offer places based on the number
> > >>> of Reviewed-by: tags ... we have all the machinery to calculate that.  I
> > >>> know an invitation to the kernel summit isn't a huge incentive, but it's
> > >>> a useful one.
> > >>
> > >> Sounds like a good idea to me, though it would only effect a tiny
> > >> percentage of our reviewers.  I suppose publishing a short list of the top
> > >> n% of reviewers from which the lottery runs might give some
> > >> recognition.
> > >>
> > >
> > > I personally don't trust a Reviewed-by tag much, as I sometimes see
> > > them appear without any comments.
> > >
> > 
> > Except for the following, they are always reliable and can be trusted.
> > 
> > Reviewed-by: Edsel Murphy <edsel@murphy.com>
> > 
> > Seriously, it does happen that I send Reviewed-by: or Acked-by: feedback if
> > a patch is just fine as-is. What do you expect the reviewer to do in such
> > a case ?
> 
> There's almost always something you can say.
> 
> Even if it's a trivial patch, eg. a spelling fix, as the reviewer you should be
> confirming that only the spelling fix happened, ie. no other changes slipped
> into the diff. And so you can say that.
> 
> If it's more complex than a spelling fix then there's usually something you can
> comment on.
> 
> There might be times when all you can say is "Yep, logic looks right" which
> might seem redundant, but personally I'd prefer to see that than just a plain
> Reviewed-by.

Agreed. I have this same conversation about commit messages. I don't care if
it's a whitespace fix, if it is worth patching, building, testing, and
submitting, it is worth writing a sentence about why you did it and what it's
for. The same applies to a review. What did you confirm? Did you build it? Run
checkpatch or some other static analysis? I think I'm also guilty of a one-line
review now and then, but I'll be sure to include detail in the future.

-- 
Darren Hart
Intel Open Source Technology Center
