Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 830AAB6C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 06:15:24 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3E25D161
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 06:15:23 +0000 (UTC)
Date: Tue, 25 Aug 2015 23:15:14 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Krzysztof Kozlowski <k.kozlowski@samsung.com>
Message-ID: <20150826061514.GA8666@jtriplet-mobl1>
References: <20150723105726.GC30929@amd> <20150826042537.GA4022@sudip-pc>
	<55DD4607.2030308@samsung.com> <75821461.TO3mbjAQav@avalon>
	<55DD4FA1.2090605@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55DD4FA1.2090605@samsung.com>
Cc: =?iso-8859-1?Q?Andersson=2C_Bj=F6rn?= <Bjorn.Andersson@sonymobile.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 26, 2015 at 02:33:21PM +0900, Krzysztof Kozlowski wrote:
> On 26.08.2015 14:30, Laurent Pinchart wrote:
> > On Wednesday 26 August 2015 13:52:23 Krzysztof Kozlowski wrote:
> >> On 26.08.2015 13:25, Sudip Mukherjee wrote:
> >>> On Wed, Aug 26, 2015 at 10:22:11AM +0900, Krzysztof Kozlowski wrote:
> >>>> On 26.08.2015 03:59, Tim Bird wrote:
> >>>>> On 07/29/2015 12:40 AM, Pavel Machek wrote:
> >>> <snip>
> >>>
> >>>> 4. Their coding style is so different that I can't imagine mainlining
> >>>> them into staging area... Recently I was digging into Mali400 and it was
> >>>> literally hurting my eyes to see that coding style. It's like opposite
> >>>> of kernel.
> >>>
> >>> Hi,
> >>> I have seen Mali code once few months ago and true that the styling
> >>> there is exactly opposite of what we use. But anyway, I hope including
> >>> that in staging will be beneficial for all of you.
> >>
> >> Looking at the list of SoCs using Mali:
> >> https://en.wikipedia.org/wiki/Mali_(GPU)
> >> then clearly a lot of vendors could benefit from that. I would be happy
> >> to see Mali in staging/mainline.
> >>
> >>> And I can also guess
> >>> that it will be a waste of your time if you add it to staging and
> >>> refactor the code ultimately merging it to the main part of the kerel.
> >>>
> >>> I am not an experienced Mali developer but if you all are ok with it then
> >>> I can take up the task of adding it to staging. But I will need to have
> >>> a board for that as without hardware Greg will not allow the code to be
> >>> added. And Krzysztof has suggested ODROID-U3 for this purpose.
> >>
> >> Right, I suggested Odroid-U3 (with Mali 400 and Exynos4412) because the
> >> board works quite well with mainline. Most of stuff is upstreamed.
> >> However I am using Tizen TV profile (public) on it with 4.0 kernel (not
> >> entirely public).
> >>
> >> There are a lot of more devices with Mali 400 or newer so the question
> >> would be rather - which board would work the best (with less problems)
> >> on mainline.
> >>
> >> Anyway good luck :)
> > 
> > Given that DRM drivers can't be merged to mainline without an open-source 
> > userspace we're stuck until ARM decides to play fair (unlikely) or the Lima 
> > driver project rises back from the deaths.
> 
> You mean that closed Mali DDK (the user-space interface) is major
> obstacle for mainlining Mali kernel side? Why?

Exactly as stated: in general, and particularly for graphics, a kernel
interface needs some Open Source userspace showing that it actually
works.  The graphics maintainers do not merge kernel drivers for which
only a proprietary userspace exists, for a variety of reasons, not least
of which an inability to test them, check for regressions, or otherwise
maintain them.

I haven't heard anything about Lima being defunct, though; as far as I
know, it's as functional as it ever was on the hardware it supports.
It's unlikely to ever be officially supported, but that hardly seems
like a requirement.  If you're running on a Mali 400, Lima should work.

- Josh Triplett
