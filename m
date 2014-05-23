Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 57C5F932
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 18:10:58 +0000 (UTC)
Received: from mail9.hitachi.co.jp (mail9.hitachi.co.jp [133.145.228.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 80A7F200A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 18:10:57 +0000 (UTC)
Message-ID: <537F8F2B.2060108@hitachi.com>
Date: Sat, 24 May 2014 03:10:51 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: Olof Johansson <olof@lixom.net>
References: <537F3551.2070104@hitachi.com>
	<20140523133200.GY8664@titan.lakedaemon.net>
	<CAOesGMhZ-RNs0bQBTABOQhjk3R2EjiWsSBpJ5248Z5YS+RvrRA@mail.gmail.com>
In-Reply-To: <CAOesGMhZ-RNs0bQBTABOQhjk3R2EjiWsSBpJ5248Z5YS+RvrRA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

(2014/05/24 1:24), Olof Johansson wrote:
>> The boot farms that Kevin and Olof run currently tests booting to a
>> command prompt.  We're catching a lot of regressions before they hit
>> mainline, which is great.  But I'd like to see how we can extend that.
>> And yes, I know those farms are saturated, and we need to bring
>> something else on line to do more functional testing,  Perhaps break up
>> the testing load:  boot-test linux-next, and runtime tests of the -rcX
>> tags and stable tags.
> 
> I wouldn't call them saturated, but neither of us will be able to
> scale to 10x the current size. 2-3x should be doable.

Right, the size of test should be considered. If the number of tests
are too big and testing takes too long time, no one executes it.

>>> So, I'd like to discuss how we can standardize them for each subsystem
>>> at this kernel summit.
>>>
>>> My suggestion are,
>>> - Organizing existing in-tree kernel test frameworks (as "make test")
> 
> For my type of setup, I'd prefer a "make install_tests" target,
> similar to modules/firmware that I can give a prefix to, and then
> something in that directory to actually run them.

So it installs tests to /lib/testing/, similar to modules :) ?
Yeah, that's also good, perhaps we can add "make testconfig" too.

Thank you,

-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
