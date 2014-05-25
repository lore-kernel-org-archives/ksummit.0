Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4892426
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 04:57:14 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id F2DAC1F8A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 04:57:13 +0000 (UTC)
Message-ID: <1400993829.2322.13.camel@dabdike.int.hansenpartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Guenter Roeck <linux@roeck-us.net>
Date: Sun, 25 May 2014 08:57:09 +0400
In-Reply-To: <5380F092.3070600@roeck-us.net>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana> <5380F092.3070600@roeck-us.net>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 2014-05-24 at 12:18 -0700, Guenter Roeck wrote:
> >
> > The thing I'd like to see way more in the Linux ecosystem:
> >
> > Paid reviewers/maintainers (selected people, no hiring offers). The
> > number of developers increases faster than the number of quality
> > keepers. So, the latter should be given the chance to focus on it, if
> > they want to.
> >
> 
> Problem with that is that in most company hierarchies code reviewers
> get little  if no credit for their work.

I could see this in start up type companies.  Older companies learned
long ago that customers value quality over features so they tend to have
elaborate review processes. (As an aside, customers say they value
features, but if you deliver one with a regression, it's the regression
you'll hear about the whole time).

>  If anything, I have seen
> the opposite - code reviewers, if they take their responsibility
> serious, end up getting blamed for project delays because they keep
> finding problems in the code.

I've worked for a couple of large companies over my career (and a few
start ups).  I've got to say that's not my experience.  I've always seen
us blame the submitter for bad code, not the reviewer.

> Imagine a project where one employee writes the code and another
> reviews it. Who do you think will get the credit (and bonus) ?
> I bet it will be the person who wrote the code, not the person
> who made sure that it is clean and free of bugs.

This is certainly true that credit goes to features.  However, if your
company only incents that way, QA rapidly gets disillusioned, so only
giving credit to features wouldn't work long term which is why no
company I know does it.

To give a counter point: every product we produce has defect metrics and
I've seen QA get all the prizes in the case where the initial submit was
too buggy and they turned around the reviews and tests fast enough to
meet the shipping deadlines and reduce the defects to within the
metrics.

In all things in life, it's a balance.  I've seen cockups where QA is
solely incented on defects found and minor UI bugs get classified as
critical feature defects (because that's what gets the bonus).

But anyway, back to the problem at hand, I think you're suggesting that
paying for reviews might not work, and I think I agree because it's back
to incenting QA solely on finding defects.  However, if others thought
there was merit, we might persuade the LF to offer a small incentive.

James
