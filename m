Return-Path: <rostedt@goodmis.org>
Date: Tue, 26 Jul 2016 23:19:03 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20160726231903.50013567@grimm.local.home>
In-Reply-To: <2340101.mYDzTnT1Lv@vostro.rjw.lan>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160710170117.GI26097@thunk.org> <578293C5.1090503@roeck-us.net>
	<2340101.mYDzTnT1Lv@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	ksummit-discuss@lists.linux-foundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 11 Jul 2016 00:38:05 +0200
"Rafael J. Wysocki" <rjw@rjwysocki.net> wrote:

> However, "long-term stable" trees started to appear at one point and those are
> quite different and serve a different purpose.  I'm not quite sure if handling
> them in the same way as 4.6.y is really the best approach.  At least it seems
> to lead to some mismatch between the expectations and what is really delivered.

I think what happens is simply time. For 4.6.y stable kernels, there's
nothing but bug fixes to add to them. But when you talk about older
kernels, there is a tendency to add stuff that could be questionable
about how much of a "fix" something is. Not to mention, the older a
kernel is, the more it diverges from mainline, and there may be fixes
in mainline, that are "sorta" fixes for those kernels.

I've had fixes that fixed a bug that mutated over time. In older
kernels, it was still a bug, but perhaps not as critical. In the newer
kernels, the bug made a bigger impact. Sometimes it was simply that the
newer kernel was much more likely to trigger the race condition. How
far back to have a fix go becomes a gray area. Perhaps the fix for
4.6.y is obviously correct, but that same fix may not be so obvious for
older kernels.

-- Steve
