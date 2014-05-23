Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D48CF932
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 18:06:43 +0000 (UTC)
Received: from mail7.hitachi.co.jp (mail7.hitachi.co.jp [133.145.228.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id BBDDD1FFF5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 18:06:42 +0000 (UTC)
Message-ID: <537F8E2B.1060805@hitachi.com>
Date: Sat, 24 May 2014 03:06:35 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: Jason Cooper <jason@lakedaemon.net>
References: <537F3551.2070104@hitachi.com>
	<20140523133200.GY8664@titan.lakedaemon.net>
In-Reply-To: <20140523133200.GY8664@titan.lakedaemon.net>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

(2014/05/23 22:32), Jason Cooper wrote:
> Masami,
> 
> On Fri, May 23, 2014 at 08:47:29PM +0900, Masami Hiramatsu wrote:
>> Issue:
>> There are many ways to test the kernel but it's neither well documented
>> nor standardized/organized.
>>
>> As you may know, testing kernel is important on each phase of kernel
>> life-cycle. For example, even at the designing phase, actual test-case
>> shows us what the new feature/design does, how is will work, and how
>> to use it. This can improve the quality of the discussion.
>>
>> Through the previous discussion I realized there are many different methods/
>> tools/functions for testing kernel, LTP, trinity, tools/testing/selftest,
>> in-kernel selftest etc. Each has good points and bad points.
> 
> * automated boot testing (embedded platforms)
> * runtime testing
> 
> A lot of development that we see is embedded platforms using
> cross-compilers.  That makes a whole lot of tests impossible to run on
> the host.  Especially when it deals with hardware interaction.  So
> run-time testing definitely needs to be a part of the discussion.

Yeah, standardizing how we do run time/boot time testing is good
to be discussed :) And I'd like to focus on standardization process
at this point, since for each implementation there are many hardware
specific reasons why we do/can't do something I guess.

> The boot farms that Kevin and Olof run currently tests booting to a
> command prompt.  We're catching a lot of regressions before they hit
> mainline, which is great.  But I'd like to see how we can extend that.
> And yes, I know those farms are saturated, and we need to bring
> something else on line to do more functional testing,  Perhaps break up
> the testing load:  boot-test linux-next, and runtime tests of the -rcX
> tags and stable tags.

Yeah, it's worth to share the such testing methods. For boot-time
testing, I think we can have a script which packs tests and builds a
special initrd which runs the tests and makes reports :)

>> So, I'd like to discuss how we can standardize them for each subsystem
>> at this kernel summit.
>>
>> My suggestion are,
>> - Organizing existing in-tree kernel test frameworks (as "make test")
>> - Documenting the standard testing method, including how to run,
>>   how to add test-cases, and how to report.
>> - Commenting standard testing for each subsystem, maybe by adding
>>   UT: or TS: tags to MAINTAINERS, which describes the URL of
>>   out-of-tree tests or the directory of the selftest.
> 
>  - classify testing into functional, performance, or stress
>     - possibly security/fuzzing

Good point!

> 
>> Note that I don't tend to change the ways to test for subsystems which
>> already have own tests, but organize it for who wants to get involved in
>> and/or to evaluate it. :-)
> 
> And make it clear what type of testing it is.  "Well, I ran make test"
> on a patch affecting performance is no good if the test for that area is
> purely functional.

Agreed, the test for each phase (design, development, pull-request and
release) should be different. To scale out the test process, we'd better
describe what the subsystem (and sub-subsystem) maintainers run, and
what the release managers run.

> 
> On the stress-testing front, there's a great paper [1] on how to
> stress-test software destined for deep space.  Definitely worth the
> read.  And directly applicable to more than deep space satellites.

Thanks to share such good document :)

> 
>> I think we can strongly request developers to add test-cases for new features
>> if we standardize the testing method.
>>
>> Suggested participants: greg k.h., Li Zefan, test-tool maintainers and
>>                        subsystem maintainers.
> 
> + Fenguang Wu, Kevin Hilman, Olof Johansson
> 
> thx,
> 
> Jason.
> 
> [1] http://messenger.jhuapl.edu/the_mission/publications/Hill.2007.pdf
> 
> 

Thank you,

-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
