Return-Path: <tony@atomide.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0F0BF7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 05:33:06 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 39FBBA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 05:33:05 +0000 (UTC)
Date: Sun, 2 Aug 2015 22:33:01 -0700
From: Tony Lindgren <tony@atomide.com>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20150803053300.GD10928@atomide.com>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723202901.GA30318@amd> <20150729133244.GH20130@sirena.org.uk>
	<20150731122227.GA31877@amd> <20150731175215.GJ20873@sirena.org.uk>
	<20150731220306.GA7867@amd>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150731220306.GA7867@amd>
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

* Pavel Machek <pavel@ucw.cz> [150731 15:06]:
> On Fri 2015-07-31 18:52:15, Mark Brown wrote:
> > On Fri, Jul 31, 2015 at 02:22:27PM +0200, Pavel Machek wrote:
> > > On Wed 2015-07-29 14:32:44, Mark Brown wrote:
> > > > On Thu, Jul 23, 2015 at 10:29:02PM +0200, Pavel Machek wrote:
> > 
> > > > ALSA is the right interface for this, this is going to be some
> > > > misunderstanding on their part about how to use it or limitations in
> > 
> > > That's what I was arguing, but see https://lkml.org/lkml/2015/3/5/606
> > 
> > I can't view that link since lkml.org was down earlier today when I was
> > working online and now I'm working offline.
> 
> It works for me now.
> 
> > > kai> Our take was that ALSA is not the right interface for cmt_speech. The
> > > kai> cmt_speech interface in the modem is _not_ a PCM interface as modelled
> > > kai> by
> > > kai> ALSA. Specifically:
> > > kai>
> > > kai>- the interface is lossy in both directions
> > 
> > Yay.

Well at the point when the audio gets played out of the speaker it's
a stream :) I think the issues above are related to reading raw data
from the modem before it gets processed further for noise cancellation
by the DSP and so on. Eventually it should be just audio stream though.

> > > kai>- data is sent in packets, not a stream of samples (could be other
> > > kai>- things
> > > kai>   than PCM samples), with timing and meta-data
> > 
> > This is what the copy() operation in the driver is for, there are other
> > DSP based devices out there as well as things like USB.
> > 
> > > kai>   - timing of uplink is of utmost importance
> > 
> > Well, ALSA doesn't impose any latency of its own so there should be no
> > issue there - the overheads should be minimal.

I believe the fact that that ALSA fifo size could not be changed
dynamically between what the modem needs and what should be used for
audio playback from PM point of view used to be a problem. Maybe
that's already fixed, now I don't know. Just FYI.
 
> The interface Nokia has is pretty strange. I believe you send
> timestamp with buffer, and it means "I'd like this packet of data to
> be sent at that time", or something like that.
> 
> Anyway, no need to argue with me, I believe ALSA should be suitable.

Yes ALSA is suitable for sure. It's the raw modem data to audio
stream processing part that's weird but that's not ALSA's problem.

Regards,

Tony
