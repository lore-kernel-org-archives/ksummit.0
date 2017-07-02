Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 380409C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Jul 2017 18:14:56 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2064E152
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Jul 2017 18:14:54 +0000 (UTC)
Date: Sun, 2 Jul 2017 20:14:45 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Sebastian Reichel <sre@kernel.org>
Message-ID: <20170702181445.GB1894@xo-6d-61-c0.localdomain>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626083407.GA9621@amd> <20170627123947.krne6a2saolcndih@earth>
	<20170627215755.GC5250@amd> <20170628164502.itggbf4xuhsv3oyf@earth>
	<20170628211008.GA19571@amd>
	<20170702112826.zirafz7lbo5lnabd@earth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170702112826.zirafz7lbo5lnabd@earth>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi!

> > > I guess your battery is not the fittest anymore?
> > 
> > I guess that's one issue. (One of my batteries is actually so bad that
> > GSM modem fails with it.)
> > 
> > Well, I guess Debian boots a little longer than Maemo. Plus, I believe
> > we should charge the battery from kernel by default; it will enable
> > running fsck etc, and it will mean slow userspace boot will not
> > break...
> 
> That sounds like really bad battery :)

Yes, fortunately I have two others :-).

> > Interesting :-). I guess you could do really fair comparison of the
> > chipsets.
> > 
> > (Binary driver -- bad Motorola :-( )
> 
> Yeah :( Note, that Nokia also has binary driver for the N900 (which
> had been reverse engineered) and a different on on N950 (which has
> not been reverse engineered so far).

Yes... and another reason to keep N900.

> > > > +	int mV, mA, mOhm = 430, mVadj = 0;
> > > 
> > > 430 mOhm?
> > 
> > Yes, 0.43 Ohm.
> 
> What's the source of this value?

Estimate on one of my batteries. Real value differs with temperature and battery
age (among other things) but this is already significantly better than assuming
internal resistance is zero.

Best regards,
									Pavel


-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
