Return-Path: <shuah@kernel.org>
To: Olof Johansson <olof@lixom.net>, Steven Rostedt <rostedt@goodmis.org>
References: <20181001140402.0799a8f0@gandalf.local.home>
	<20181002011856.GA10841@kroah.com>
	<20181002090713.71b529fe@gandalf.local.home>
	<CAOesGMhX3PpQMhuvRO8JwATHbLuoYS6hfhDdoYz12eAy4r79NA@mail.gmail.com>
From: Shuah Khan <shuah@kernel.org>
Message-ID: <c5546d68-bdcc-dd02-e072-9272d39de504@kernel.org>
Date: Tue, 2 Oct 2018 10:00:29 -0600
MIME-Version: 1.0
In-Reply-To: <CAOesGMhX3PpQMhuvRO8JwATHbLuoYS6hfhDdoYz12eAy4r79NA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

On 10/02/2018 08:59 AM, Olof Johansson wrote:
> On Tue, Oct 2, 2018 at 6:07 AM Steven Rostedt <rostedt@goodmis.org> wrote:
>>
>> On Mon, 1 Oct 2018 18:18:56 -0700
>> Greg KH <gregkh@linuxfoundation.org> wrote:
>>
>>> On Mon, Oct 01, 2018 at 02:04:02PM -0400, Steven Rostedt wrote:
>>>> At Kernel Recipes, I talked with some people that have mature
>>>> interfaces in the debugfs directory, but they can not access them on
>>>> systems that have debugfs disabled. What would be the process to have
>>>> these systems move out of debugfs? Should they create their own fs and
>>>> be mounted in /sys/kernel, with a dedicated directory if the file system
>>>> is enabled in the kernel (I had tracefs do that).
>>>>
>>>> Is this something we should discuss at Maintainers Summit? What is the
>>>> process for mature debugfs directories? What's the justification to
>>>> have them moved? Is there a better answer for this?
>>>
>>> It's a technical topic, so maintainers summit doesn't make sense.
>>>
>>> Stuff in debugfs should NEVER be used for anything "real" or anything
>>> other than debugging.  So I would argue that that code needs to be fixed
>>> up now anyway, as most distros are disabling debugfs for the obvious
>>> reasons (and Android is also turning it off).
>>
>> The funny part is, things used for debugging tend to turn into
>> something that people want on production systems (tracing,
>> perf, powertop, etc).
>>
>>>
>>> As for where to put it, it all depends on exactly what it is, and what
>>> it does and who uses it.  So it's almost always a case-by-case basis.
>>>
>>> Any specific examples you wish to share of code that needs this?
>>>
>>
>> tracefs was one example, but someone was talking to me at Kernel
>> Recipes and wanted had another directory in debugfs and wanted it out
>> as it was stable and wanted it exposed when debugfs is turned off.
>> Unfortunately, this was discussed at an evening event, and I don't
>> recall the specifics.
> 
> One really useful criteria for graduating some service to sysfs would
> be to have namespaces and security aspects sorted out for it. Being in
> debugfs you can ignore all of that.

Yes. Moving to debugfs service to sysfs would make it more secure. However,
security is important even if it stays in debugfs.

I don't believe that is safe to have a lower security bar for dbugfs
interfaces. Not all distros disable debugfs and if debugfs becomes
vulnerability, it would become target on distros that don't disable.

> 
> Having something that containers might want for their own use (say,
> for example, some trace functionality) move into sysfs but not being
> possible to provide to an unprivileged container seems like things
> we'd like to avoid.
> 

We still have to be concerned about restricting the scope of the sysfs
to containers and we run into namespace issues that sysfs being visible
to other containers.

I am dealing one such driver that is being used in container space and
its namespace not being restricted to container scope.

thanks,
-- Shuah


> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
