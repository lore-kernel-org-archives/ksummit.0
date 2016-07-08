Return-Path: <linux@roeck-us.net>
To: Jiri Kosina <jikos@kernel.org>, ksummit-discuss@lists.linux-foundation.org
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <5780334E.8020801@roeck-us.net>
Date: Fri, 8 Jul 2016 16:12:14 -0700
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/08/2016 03:35 PM, Jiri Kosina wrote:
> Yeah, this topic again. It'd be a sad year on ksummit-discuss@ without it,
> wouldn't it? :)
>
> As a SUSE Enterprise Linux kernel maintainer, stable kernel is one of the
> crucial elements I rely on (and I also try to make sure that SUSE
> contributes back as much as possible).
>
> Hence any planned changes in the workflow / releases are rather essential
> for me, and I'd like to participate, should any such discussion take
> place.
>

Same here. New employer, lots of unhappiness with stable releases, to the point
where stable trees are not used as basis for shipping releases.
That kind of defeats the purpose. So, instead of "let's ignore stable",
maybe we can get to a point where people feel comfortable with the quality
of stable releases, and where stable can actually be used as basis for production
releases.

> In addition to that, I'd again (like during the past 5+ years, but it
> never really happened) like to propose a stable tree discussion topic: I'd
> like to see an attempt to make the stable workflow more oriented towards
> "maintainers sending pull requests" rather than "random people pointing to
> patches that should go to stable". This has been much of an issue in the

Sounds like an excellent idea.

> past, when we've been seeing many stable tree regressions; that's not the
> case any more, but still something where I sense a room for improvement.
>

We have a lot more testing, which I am sure helps, but from what I hear
the lack of testing and the concern of inheriting regressions is still a
big concern.

Guenter
