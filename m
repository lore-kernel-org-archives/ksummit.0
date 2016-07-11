Return-Path: <jikos@kernel.org>
Date: Mon, 11 Jul 2016 10:47:37 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
In-Reply-To: <2340101.mYDzTnT1Lv@vostro.rjw.lan>
Message-ID: <alpine.LNX.2.00.1607111043590.24757@cbobk.fhfr.pm>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160710170117.GI26097@thunk.org> <578293C5.1090503@roeck-us.net>
	<2340101.mYDzTnT1Lv@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 11 Jul 2016, Rafael J. Wysocki wrote:

> So going back to the origins of -stable, the problem it was invented to 
> address at that time, IIRC, was that people started to perceive 
> switching over to the kernels released by Linus as risky, because it was 
> hard to get fixes for bugs found in them.  The idea at that time was to 
> collect the fixes (and fixes only) in a "stable" tree, so that whoever 
> decided to use the latest kernel released by Linus could get them 
> readily, but without burdening maintainers with having their own 
> "stable" branches and similar.  And that was going to last until the 
> next kernel release from Linus, at which point a new "stable" tree was 
> to be started.
> 
> That's what the 4.6.y "stable" series is today.
> 
> To me, that particular part has been very successful and it actually 
> works well enough, so I wouldn't change anything in it.
> 
> However, "long-term stable" trees started to appear at one point and 
> those are quite different and serve a different purpose.  I'm not quite 
> sure if handling them in the same way as 4.6.y is really the best 
> approach.  At least it seems to lead to some mismatch between the 
> expectations and what is really delivered.

That's a very good point, and I fully agree with that. Actually all my 
previous proposals applied mostly to the long-term releases. The "last 
release + fixes" indeed seems to be rather fluent.
OTOH, I am not really sure how many consumers does that tree have.

Thanks,

-- 
Jiri Kosina
SUSE Labs
