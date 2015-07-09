Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6ED1FACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 19:47:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E308E11F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 19:47:36 +0000 (UTC)
Date: Thu, 9 Jul 2015 12:47:34 -0700
From: Darren Hart <dvhart@infradead.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20150709194734.GG9169@vmdeb7>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<559D8336.3040802@roeck-us.net>
	<1436414798.23558.3.camel@ellerman.id.au>
	<559EBD4C.6030502@gmail.com> <20150709190640.GC788@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150709190640.GC788@roeck-us.net>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	jic23@jic23.retrosnub.co.uk, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Thu, Jul 09, 2015 at 12:23:20PM -0700, Guenter Roeck wrote:
> On Thu, Jul 09, 2015 at 11:28:28AM -0700, Frank Rowand wrote:
> > On 7/8/2015 9:06 PM, Michael Ellerman wrote:
> > > On Wed, 2015-07-08 at 13:08 -0700, Guenter Roeck wrote:
> > >> On 07/08/2015 11:53 AM, Steven Rostedt wrote:
> > >>> On Wed, 08 Jul 2015 09:00:32 +0100
> > >>> jic23@jic23.retrosnub.co.uk wrote:
> > >>>
> > >>>
> > >>>>> We can alter that somewhat.  We used to run a Maintainers lottery for
> > >>>>> the kernel summit ... we could instead offer places based on the number
> > >>>>> of Reviewed-by: tags ... we have all the machinery to calculate that.  I
> > >>>>> know an invitation to the kernel summit isn't a huge incentive, but it's
> > >>>>> a useful one.
> > >>>>
> > >>>> Sounds like a good idea to me, though it would only effect a tiny
> > >>>> percentage of our reviewers.  I suppose publishing a short list of the top
> > >>>> n% of reviewers from which the lottery runs might give some
> > >>>> recognition.
> > >>>>
> > >>>
> > >>> I personally don't trust a Reviewed-by tag much, as I sometimes see
> > >>> them appear without any comments.
> > 
> > I don't expect my Reviewed-by tag with no extra comments to carry much weight
> > if I send it to a maintainer who does not know me.
> > 
> > But if I have a history of good reviews to a specific maintainer, then why
> > should I have to add a message that says: Yes, I really, really did review
> > the patch.  I truly mean that the patch "has been reviewed and found acceptable
> > according to the Reviewer's Statement" as listed in SubmittingPatches.
> > 
> > And I read Steve's qualification of "don't trust ... _much_" as being
> > consistent with what I am saying, so I'm fine with that.  The point I
> > want to make is that a Reviewed-by tag without comments should not
> > always be assumed to be without meaning or value.
> > 
> Absolutely agree.
> 
> It looks like we have yet another set of diverging maintainer expectations.
> Some maintainers will expect me to provide an extra comment, which I'll
> have to phrase carefully to avoid it being misinterpreted as "I just
> glanced at the code and didn't find an obvious issue with it".
> Others will get annoyed at me providing the extra comment.

Why would a couple lines of context be any harder to deal with than all the
meta-data that comes along with an email including a Reviewed-by?

-- 
Darren Hart
Intel Open Source Technology Center
