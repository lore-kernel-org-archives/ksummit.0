Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8616D282
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 19:04:01 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 8FD5D178
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 19:04:00 +0000 (UTC)
Date: Sat, 1 Aug 2015 21:03:57 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20150801190357.GA25683@amd>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723202901.GA30318@amd> <20150729133244.GH20130@sirena.org.uk>
	<20150731122227.GA31877@amd> <20150731175215.GJ20873@sirena.org.uk>
	<20150731220306.GA7867@amd> <20150801105522.GP20873@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150801105522.GP20873@sirena.org.uk>
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

On Sat 2015-08-01 11:55:23, Mark Brown wrote:
> On Sat, Aug 01, 2015 at 12:03:06AM +0200, Pavel Machek wrote:
> > On Fri 2015-07-31 18:52:15, Mark Brown wrote:
> 
> > > Given that the baseband is a key part of the data path it's not like
> > > you're gaining anything there as far as I can see?   I suppose you could
> > > argue that the AP is actually an additional attack surface here.
> 
> > Actually yes, I believe I'm gaining a lot.
> 
> > If baseband is directly connected to the microphone, it can eavesdrop
> > on me while the phone appears to be idle.
> 
> Oh, right.  That's not an issue since there's generally routing control
> in the rest of the system (within the CODEC and sometimes elsewhere
> also) so you can isolate the baseband from the local audio sources and
> only connect it in call.  When not in use the CODEC will be powered down
> and even when in use by the AP you'd usually not route to the baseband.
> 
> The baseband normally doesn't have sufficient physical access to
> relevant control interfaces to get any input.

Ok, on many systems you are right, I guess.

That still leaves these reasons to route it though the CPU:

* ability to record calls

* ability to do signal processing on the data, like echo cancel for
  speakerphone (or perhaps changing your voice to female one)

* ability to do advanced stuff like GSM-to-VOIP gateway.

But yes, connecting baseband directly to audio is simpler...

									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
