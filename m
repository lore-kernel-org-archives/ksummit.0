Return-Path: <linux@roeck-us.net>
To: Jason Cooper <jason@lakedaemon.net>,
	Johannes Berg <johannes@sipsolutions.net>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net>
	<3908561D78D1C84285E8C5FCA982C28F3A15659B@ORSMSX114.amr.corp.intel.com>
	<alpine.LNX.2.00.1607091028050.24757@cbobk.fhfr.pm>
	<1468056541.4837.34.camel@sipsolutions.net>
	<20160709151934.GD8989@io.lakedaemon.net>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <57812077.20407@roeck-us.net>
Date: Sat, 9 Jul 2016 09:04:07 -0700
MIME-Version: 1.0
In-Reply-To: <20160709151934.GD8989@io.lakedaemon.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linux-foundation.org"
	<ksummit-discuss@lists.linux-foundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Jason,

On 07/09/2016 08:19 AM, Jason Cooper wrote:

>
> I dunno.  I agree we need to increase feedback, but I think relying on
> active dialog wouldn't last.  Posting a branch based on the oldest
> relevant version, and getting automated/semi-automated feedback on it
> *before* it's accepted into -stable would be a huge help.
>

Very much so. However, running such regressions would be technically impossible
with the current test infrastructure, with the possible exception of the 0day
build tests. Even the 0day build tests, given the number of "incomplete test"
results I am seeing lately, may have reached its limits.

> But that's assuming I'm reading the nature of the regressions correctly.
> Namely that they're compile failures or boot up failures.  Which are
> both things we have automated testing for.
>
Such regressions are discovered because there is now automated testing.
A couple of years ago, stable trees would not even build for anything
but major architectures. However, that only means that all the other
regressions (the ones more subtle than "it builds and boots, therefore
it works") are not discovered. It does not mean that there are no such
regressions.

Guenter
