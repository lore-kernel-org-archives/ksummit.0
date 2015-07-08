Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 01D17BAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 18:05:45 +0000 (UTC)
Received: from pmta2.delivery3.ore.mailhop.org
	(pmta2.delivery3.ore.mailhop.org [54.213.22.21])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 537A6EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 18:05:44 +0000 (UTC)
Date: Wed, 8 Jul 2015 18:05:41 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20150708180541.GK23515@io.lakedaemon.net>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<CA+5PVA4YON79=wrSTfQ8TJrQNOuLShvaVA1_+BDcTxrmVe_hcQ@mail.gmail.com>
	<CAJKOXPfnwUX5fdBg1EDJSGgrNGXb3AmrK8tXokxqHw=XYzhddA@mail.gmail.com>
	<201507080905.00051.PeterHuewe@gmx.de>
	<20150708150220.GJ23515@io.lakedaemon.net>
	<559D518A.7010304@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <559D518A.7010304@roeck-us.net>
Cc: Josh Boyer <jwboyer@fedoraproject.org>,
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

On Wed, Jul 08, 2015 at 09:36:26AM -0700, Guenter Roeck wrote:
> On 07/08/2015 08:02 AM, Jason Cooper wrote:
> >On Wed, Jul 08, 2015 at 09:04:58AM +0200, Peter Hüwe wrote:
> 
> >>"I've been a kernel reviewer and tester" -- meh, who cares
> >
> >Show me a concrete example where that has been expressed.  I've had the
> >exact opposite experience.  Typically I've had to tone down the
> >expectations of others.
> >
> Lucky you.

Well, my point wasn't to brag, but I think you knew that.

I'd hope that my experience isn't isolated, and if it is, why?

> In my experience, code reviews often don't get much attention by project
> managers responsible for commercial projects. If anything, quite the opposite.
> The Linux kernel development culture is quite different.
> 
> Linux kernel:
> 	"Thanks a lot for reviewing my code and making it better".
> Commercial:
> 	"Why do your reviews always take such a long time ?
> 	You are holding up the release!"

These are responses to reviews during employment.  I was referring to,
perhaps not clearly, the hiring process.

> Granted, that doesn't happen everywhere, but I have seen it more than once,
> and I would content that this kind of culture is pretty widely spread.

wrt actual code reviews, I agree.

> Of course, one might
> argue that joining an affected company might not be a good idea in the
> first place, but not everyone has that much flexibility or choice.

When interviewing potential engineers, folks who demonstrate regular,
real contributions to open source projects move up a notch or two in my
book.  Because the applicant has then demonstrated an ability to work
with others, at a distance, for the good of the project.

iow, working in open source projects demonstrates you know how to
telecommute.  For companies looking to hire engineers into telecommuting
positions, open source contributors are much lower risk.

What percentage of the overall market is that?  I dunno.  But devs
wanting to live in odd places have a better shot of finding jobs by
becoming regular contributors to open source.

> I am not saying that it would be a bad idea to give code reviewers more
> credit; quite the contrary. However, I think it would be wrong to assume
> or expect that giving reviewers more credit would improve their chances
> for employment. It would, however, result in reviewers feeling recognized
> for themselves, which is a good thing.

I think we can get more results for our efforts by bringing folks in to
community events.  Buy beers and so forth.  I'll never forget the
evening in San Diego drinking blended single-malt (?!) with Olof, Tony
and others.

If I enjoy working with someone, I take them out for beers, spend *time*
with them.  This works a lot better that adding a bullet to an eval.

> Why does it matter ? I had a discussion a while ago with the founder of
> one of the web sites providing product reviews. I suggested to give product
> reviewers some kind of monetary reward for their reviews, eg part of the
> advertising revenue created by the site. Feedback I got was that reviewers
> typically don't care about monetary rewards, but they do care about recognition
> and about their standing in the community.

Fully agree.  And it argues my point, things which can be counted and
accrued (money, tokens, Reviewed-by [1], etc) rarely have the desired
affect.  At the end of the day, there's no substitute for making genuine
gestures.  Invites to KS or other events, dinner, drinks, socialization.

The problem with doing that is it costs money.  Who pays?  Does the 17
year old in Poland have the money to fly to $event?

If we agree that:

  a) increasing the opportunities for trial run contributors/reviewers
  b) developing community by getting together regularly
  c) collecting statistics to determine program efficacy

Are good targets, then I'd like to discuss putting together a
program/proposal that we could take to LF.  Something quantifiable, e.g.
company X can 'sponsor' 5 newcomers over the next year for $Y.  It
includes, per newcomer, a travel allowance for one trip and a small sum
for a piece of gear.  Gear issuance is determined by the
co-maintainer/established kernel dev working with the newcomer.

Events could be small, 2 day regional affairs, or 1 big annual get
together.  Or both.  If we go with small and regional, we would need to
include the cost of flying the relevant established devs to the event.
Regional events could be hosted by Linux-friendly companies to reduce
cost.


thx,

Jason.

[1] It's worth noting that I view the tags as a *responsibility*, not a
reward.  It informs a bug hunter which devs had a hand it creation /
merging of the blamed commit.  Overloading the tags has been discussed
before, with much resistance.
