Return-Path: <jani.nikula@intel.com>
From: Jani Nikula <jani.nikula@intel.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
In-Reply-To: <20181002183203.1087fd69@coco.lan>
References: <20181001140402.0799a8f0@gandalf.local.home>
	<87va6kkagg.fsf@intel.com> <20181002183203.1087fd69@coco.lan>
Date: Wed, 03 Oct 2018 09:23:09 +0300
Message-ID: <87woqzr1ki.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ksummit-discuss@lists.linuxfoundation.org
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

On Tue, 02 Oct 2018, Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:
> Em Tue, 02 Oct 2018 11:40:47 +0300
> Jani Nikula <jani.nikula@intel.com> escreveu:
>
>> On Mon, 01 Oct 2018, Steven Rostedt <rostedt@goodmis.org> wrote:
>> > At Kernel Recipes, I talked with some people that have mature
>> > interfaces in the debugfs directory, but they can not access them on
>> > systems that have debugfs disabled. What would be the process to have
>> > these systems move out of debugfs? Should they create their own fs and
>> > be mounted in /sys/kernel, with a dedicated directory if the file system
>> > is enabled in the kernel (I had tracefs do that).
>> >
>> > Is this something we should discuss at Maintainers Summit? What is the
>> > process for mature debugfs directories? What's the justification to
>> > have them moved? Is there a better answer for this?  
>> 
>> I have a semi-related topic, hopefully not a complete thread
>> hijack... ;)
>> 
>> I think module parameters should primarily be viewed as debug knobs
>> rather than ABI. Things should just work instead of requiring the user
>> to tweak module parameters. Of course, there's the whole spectrum
>> between ABI and "unsafe" module parameters, and parameters get added for
>> a plethora of reasons.
>> 
>> However, all module parameters show up in sysfs instead of, say,
>> debugfs. Many debug options otherwise suitable for debugfs alone are
>> added as module parameters because of the convenience; with just a few
>> lines you can add the module parameter, get the sysfs, and have the
>> value be set before probe. There's nothing that compares, really.
>> 
>> I suppose primarily I'd like to find a convenient way to move module
>> parameters to debugfs, so the other way round than Steven. Do others
>> struggle with this? Any ideas, thoughts, pointers?
>
> Actually, there are several modprobe parameters on some media
> drivers that aren't debug-related. On very cheap hardware, sometimes
> the vendor doesn't put any eeprom at the device, or doesn't care enough
> to give a PCI or USB ID for his hardware.
>
> So, several media drivers have modprobe parameters in order to help
> the module to load the right configuration.
>
> There are more commonly found at PCI devices, but there are some USB
> ones that also need those. This is currently found on some really cheap
> video grabber boards.
>
> So, moving parameters from sysfs to debugfs is not the right thing
> to do, for such usecases. Also, we try to avoid touching the existing
> parameters like that, in order to avoid breaking userspace setups.

As I tried to say, there certainly are plenty of legitimate cases like
this. It's just that there are also plenty of cases where debugfs would
clearly be the right place, without a module parameter at all, but you
can't make the debug parameters take effect at probe time. Because you
obviously need to have the driver register the debugfs files first.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
