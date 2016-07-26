Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E2C8A950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 13:44:37 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7DF901BE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 13:44:37 +0000 (UTC)
To: David Woodhouse <dwmw2@infradead.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<146834264.pgPOSbOmkO@vostro.rjw.lan>
	<1468119600.19833.9.camel@HansenPartnership.com>
	<1469540111.120686.314.camel@infradead.org>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <57976941.2040308@roeck-us.net>
Date: Tue, 26 Jul 2016 06:44:33 -0700
MIME-Version: 1.0
In-Reply-To: <1469540111.120686.314.camel@infradead.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/26/2016 06:35 AM, David Woodhouse wrote:
> On Sun, 2016-07-10 at 12:00 +0900, James Bottomley wrote:
>>
>> Note: I'm not saying don't do testing, or even that testing isn't a
>> suitable discussion topic for KS.  What I am saying is that I think we
>> should discuss our stable practices separately from testing.
>
> Well... there is a danger that by divorcing the discussion of the
> problem, from any discussion of specific things we might do to fix it,
> we could transform the former into little more than a navel-gazing
> session.
>
> Testing seems like the most productive way to reduce the number of
> regressions we see.
>
> We really should have more of an expectation that new code should be
> submitted *with* test cases. After all, it's not like people are
> generally submitting code that's *entirely* untested. It's more that
> testing is ad-hoc, and sometimes depends on running on specific
> hardware. But even the latter can often be fixed, with appropriate test
> harnesses.
>

Worthy goal, but knowing developers I am quite concerned that it would result
in (possibly much) less kernel contributions. In addition to contributions
from unaffiliated individuals, there is a lot of code in vendor trees which
is not upstreamed today. Demanding test cases for upstreaming would for sure
make the interest in upstreaming that code even lower than it is today.

Guenter

> Even actual device drivers could sometimes be exercised with tools
> based on MMIO tracing and playback.
>
>
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>
