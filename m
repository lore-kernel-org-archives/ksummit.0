Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 00C053C8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 12:22:31 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3F73EED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 12:22:29 +0000 (UTC)
Date: Fri, 31 Jul 2015 14:22:27 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20150731122227.GA31877@amd>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723202901.GA30318@amd> <20150729133244.GH20130@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150729133244.GH20130@sirena.org.uk>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	riverful.kim@samsung.com, kyungmin.park@samsung.com,
	John Stultz <john.stultz@linaro.org>,
	Bjorn Andersson <Bjorn.Andersson@sonymobile.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed 2015-07-29 14:32:44, Mark Brown wrote:
> On Thu, Jul 23, 2015 at 10:29:02PM +0200, Pavel Machek wrote:
> 
> > 4) voice link to modem: Nokia people tell us that ALSA is not suitable
> > interface to modem audio. What is the right interface, then?
> 
> ALSA is the right interface for this, this is going to be some
> misunderstanding on their part about how to use it or limitations in

That's what I was arguing, but see https://lkml.org/lkml/2015/3/5/606
.

kai> Our take was that ALSA is not the right interface for cmt_speech. The
kai> cmt_speech interface in the modem is _not_ a PCM interface as modelled
kai> by
kai> ALSA. Specifically:
kai>
kai>- the interface is lossy in both directions
kai>- data is sent in packets, not a stream of samples (could be other
kai>- things
kai>   than PCM samples), with timing and meta-data
kai>   - timing of uplink is of utmost importance
   

> the drivers for their particular system (and possibly some unfortunate
> hardware design, it sounds like they may still be bouncing the voice
> call through the AP which isn't the most wonderful idea ever).
> There

Actually, sending data through AP is _very_ good idea from security
perspective. You don't want hacked baseband to eavesdrop on you, do
you?

Best regards,
									Pavel

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
