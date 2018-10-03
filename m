Return-Path: <shuah@kernel.org>
To: Jan Kara <jack@suse.cz>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20181001140402.0799a8f0@gandalf.local.home>
	<20181002011856.GA10841@kroah.com>
	<20181002090713.71b529fe@gandalf.local.home>
	<CAOesGMhX3PpQMhuvRO8JwATHbLuoYS6hfhDdoYz12eAy4r79NA@mail.gmail.com>
	<c5546d68-bdcc-dd02-e072-9272d39de504@kernel.org>
	<20181002161730.GA7119@kroah.com> <20181002163001.GA11068@kroah.com>
	<20181002183743.78eac32d@coco.lan>
	<0e19e6d0-47bd-d57f-8e31-e3521c467fe0@kernel.org>
	<20181002222238.GA11788@kroah.com>
	<20181003125916.GB21043@quack2.suse.cz>
From: Shuah Khan <shuah@kernel.org>
Message-ID: <140f034b-e2fd-5285-c506-4ab58360c7c8@kernel.org>
Date: Wed, 3 Oct 2018 08:11:02 -0600
MIME-Version: 1.0
In-Reply-To: <20181003125916.GB21043@quack2.suse.cz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <Ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Moving debugfs file
 systems into sysfs
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 10/03/2018 06:59 AM, Jan Kara wrote:
> On Tue 02-10-18 15:22:38, Greg Kroah-Hartman wrote:
>> On Tue, Oct 02, 2018 at 03:57:30PM -0600, Shuah Khan wrote:
>>> On 10/02/2018 03:37 PM, Mauro Carvalho Chehab wrote:
>>>> Em Tue, 2 Oct 2018 09:30:01 -0700
>>>> Greg Kroah-Hartman <gregkh@linuxfoundation.org> escreveu:
>>>>
>>>>> On Tue, Oct 02, 2018 at 09:17:30AM -0700, Greg Kroah-Hartman wrote:
>>>>>> On Tue, Oct 02, 2018 at 10:00:29AM -0600, Shuah Khan wrote:  
>>>>>>> On 10/02/2018 08:59 AM, Olof Johansson wrote:  
>>>>>>>> On Tue, Oct 2, 2018 at 6:07 AM Steven Rostedt <rostedt@goodmis.org> wrote:  
>>>>>>>>>
>>>>>>>>> On Mon, 1 Oct 2018 18:18:56 -0700
>>>>>>>>> Greg KH <gregkh@linuxfoundation.org> wrote:
>>>>>>>>>  
>>>>>>>>>> On Mon, Oct 01, 2018 at 02:04:02PM -0400, Steven Rostedt wrote:  
>>>>>>>>>>> At Kernel Recipes, I talked with some people that have mature
>>>>>>>>>>> interfaces in the debugfs directory, but they can not access them on
>>>>>>>>>>> systems that have debugfs disabled. What would be the process to have
>>>>>>>>>>> these systems move out of debugfs? Should they create their own fs and
>>>>>>>>>>> be mounted in /sys/kernel, with a dedicated directory if the file system
>>>>>>>>>>> is enabled in the kernel (I had tracefs do that).
>>>>>>>>>>>
>>>>>>>>>>> Is this something we should discuss at Maintainers Summit? What is the
>>>>>>>>>>> process for mature debugfs directories? What's the justification to
>>>>>>>>>>> have them moved? Is there a better answer for this?  
>>>>>>>>>>
>>>>>>>>>> It's a technical topic, so maintainers summit doesn't make sense.
>>>>>>>>>>
>>>>>>>>>> Stuff in debugfs should NEVER be used for anything "real" or anything
>>>>>>>>>> other than debugging.  So I would argue that that code needs to be fixed
>>>>>>>>>> up now anyway, as most distros are disabling debugfs for the obvious
>>>>>>>>>> reasons (and Android is also turning it off).  
>>>>>>>>>
>>>>>>>>> The funny part is, things used for debugging tend to turn into
>>>>>>>>> something that people want on production systems (tracing,
>>>>>>>>> perf, powertop, etc).
>>>>>>>>>  
>>>>>>>>>>
>>>>>>>>>> As for where to put it, it all depends on exactly what it is, and what
>>>>>>>>>> it does and who uses it.  So it's almost always a case-by-case basis.
>>>>>>>>>>
>>>>>>>>>> Any specific examples you wish to share of code that needs this?
>>>>>>>>>>  
>>>>>>>>>
>>>>>>>>> tracefs was one example, but someone was talking to me at Kernel
>>>>>>>>> Recipes and wanted had another directory in debugfs and wanted it out
>>>>>>>>> as it was stable and wanted it exposed when debugfs is turned off.
>>>>>>>>> Unfortunately, this was discussed at an evening event, and I don't
>>>>>>>>> recall the specifics.  
>>>>>>>>
>>>>>>>> One really useful criteria for graduating some service to sysfs would
>>>>>>>> be to have namespaces and security aspects sorted out for it. Being in
>>>>>>>> debugfs you can ignore all of that.  
>>>>>>>
>>>>>>> Yes. Moving to debugfs service to sysfs would make it more secure. However,
>>>>>>> security is important even if it stays in debugfs.
>>>>>>>
>>>>>>> I don't believe that is safe to have a lower security bar for dbugfs
>>>>>>> interfaces. Not all distros disable debugfs and if debugfs becomes
>>>>>>> vulnerability, it would become target on distros that don't disable.  
>>>>>>
>>>>>> Until about 8 months or so ago, maybe a year, debugfs was totally
>>>>>> insecure and it was very trivial to use to crash the kernel.  Which is
>>>>>> why it is a good idea to lock it down and not mount it on "untrusted"
>>>>>> systems.  
>>>>>
>>>>> Based on a discussion on another thread on a public list, there are
>>>>> still remaining issues with debugfs that can cause major problems.  So
>>>>> no one should ever mount it on an untrusted system still.
>>>>>
>>>>> It is getting better, but the issues are tough to resolve, give us
>>>>> another year or so :)
>>>>
>>>> Even if it won't be possible to crash the Kernel or escalate
>>>> privileges, I suspect that several stuff in debugfs should never
>>>> be enabled on production systems, as they may reveal things like
>>>> memory addresses and other stuff that could be used to help someone
>>>> to crack a system.
>>>>
>>>
>>> Unfortunately distros enable DEBUG_FS. I checked a couple of distro configs.
>>>
>>> One popular distro enables:
>>>
>>> CONFIG_BLK_DEBUG_FS=y
>>> CONFIG_KVM_DEBUG_FS=y
>>> CONFIG_DEBUG_FS=y
>>>
>>> Another one enables:
>>>
>>> CONFIG_BLK_DEBUG_FS=y
>>> CONFIG_DEBUG_FS=y
>>>
>>> It looks to me that this message need to be communicated widely so distros can
>>> tighten things up.
>>
>> Luckily debugfs was made "root only by default" a while ago, to help
>> mitigate this problem.  So while it is present on a number of distros,
>> the "attack surface" is greatly reduced.
>>
>> That being said, I bet those distros can drop those config options and
>> be fine.
> 
> Not really. We need those configs to be enabled to be able to troubleshoot
> customer's problems - e.g., asking customer to enable some trace points or
> show some stats from debugfs is pretty common...
> 

Correct. This is the general approach to debug problems in the field and is
necessary to gather information pertaining to the problem.

This is one of the reasons why it is necessary to continue to make debugfs secure
and try to set a higher bar for new debugfs services going forward. I don't think
we can say "don't enable" and it should be "enable at your risk as we try to make
these as secure as possible".

thanks,
-- Shuah
