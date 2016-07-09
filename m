Return-Path: <sudipm.mukherjee@gmail.com>
Message-ID: <57815317.5060404@gmail.com>
Date: Sat, 09 Jul 2016 20:40:07 +0100
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
MIME-Version: 1.0
To: Guenter Roeck <linux@roeck-us.net>, Mark Brown <broonie@kernel.org>,
	Jiri Kosina <jikos@kernel.org>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>	<20160709000631.GB8989@io.lakedaemon.net>	<1468024946.2390.21.camel@HansenPartnership.com>	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net>
In-Reply-To: <5781148F.1010102@roeck-us.net>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
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

On Saturday 09 July 2016 04:13 PM, Guenter Roeck wrote:
> On 07/09/2016 02:36 AM, Mark Brown wrote:
>> On Sat, Jul 09, 2016 at 10:43:05AM +0200, Jiri Kosina wrote:
>>
>>> If maintainers are overwhelmed by extra work needed for stable,
>>> "offloading to Greg" doesn't sound like a proper solution to me at all.
>>> "Fixing a maintainer workflow for that particular subsystem" (such as
>>> extending the group of maintainers) does.
>>
>> I think one of the big things we're missing here is QA.  I don't
>> personally have the hardware that would allow me to test a huge chunk of
>> the code in my subsystems, I'm relying on things like kernelci.org for
>> the bulk of it.  There's some work going on on getting Greg's stable
>> queue tested more which will hopefully make things better but it's not
>> 100% there yet.
>>
> Improving QA is very much part of it. Yes, there is kernelci.org, there is
> kerneltest.org, there are the 0day builders, and there are various
> individuals
> testing the trees. This all helped a lot in stabilizing both mainline and
> the stable trees, but is not enough. We are pretty well covered with build
> tests, but runtime tests are for the most part limited to "it boots,
> therefore
> it works". We still have a long way to go to get real QA testing. As I
> suggested earlier, we'll have to find a way to convince companies to
> actively
> invest in QA.

Individual testing will depend mostly on the available time. Personally 
for me, I used to test before but with my job change I rarely get time 
to check stable anymore.
Just a thought, why dont we have a stable-next tree like the way we have 
linux-next? in that way it might get more testing than it gets now. I 
know it will be more work but atleast worth a try.

Regards
Sudip
