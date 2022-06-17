From: Hans de Goede <hdegoede@redhat.com>
Date: Fri, 17 Jun 2022 13:32:42 +0200
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
In-Reply-To: <CAO-hwJ+DJGYzKeGd8q7ma3L_qfd=phxczyfPqPnoz-DV9By_Cg@mail.gmail.com>
References: <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan> <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
 <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
 <20220616122634.6e11e58c@gandalf.local.home>
 <bbb46f66bb8518e90030fe97a1225adf178654d1.camel@HansenPartnership.com>
 <20220616125128.68151432@gandalf.local.home>
 <a522bfa4241eb263e354ebbb293b0d629dd2e026.camel@HansenPartnership.com>
 <nycvar.YFH.7.76.2206170947520.14340@cbobk.fhfr.pm>
 <20220617103050.2almimus5hjcifxl@quack3.lan>
 <CAO-hwJJxCteD_BHZTeqQ1f7gWOHoj+05qP8bmFsRYVfMc_3FxQ@mail.gmail.com>
 <dc6ca88d-d1ef-a1ab-dbef-e9338467271d@redhat.com>
 <CAO-hwJ+DJGYzKeGd8q7ma3L_qfd=phxczyfPqPnoz-DV9By_Cg@mail.gmail.com>
Message-ID: <983e1c60-49f3-7e7c-c6a7-d9e1d2b3d9b5@redhat.com>

Hi,

On 6/17/22 13:25, Benjamin Tissoires wrote:
> On Fri, Jun 17, 2022 at 1:16 PM Hans de Goede <hdegoede@redhat.com> wrote:
>>
>> Hi Benjamin,
>>
>> Deliberate offlist reply.
> 
> [re-adding the list as your last comment]
> 
>>
>> On 6/17/22 13:04, Benjamin Tissoires wrote:
>>> On Fri, Jun 17, 2022 at 12:31 PM Jan Kara <jack@suse.cz> wrote:
>>>>
>>>> On Fri 17-06-22 09:53:52, Jiri Kosina wrote:
>>>>> On Thu, 16 Jun 2022, James Bottomley wrote:
>>>>>
>>>>>>> If you want a "stable ebpf program" then you submit it upstream and
>>>>>>> we can make sure that it works with any internal API changes, the
>>>>>>> same way we do for modules. Those with out-of-tree modules will have
>>>>>>> the technical debt of changing every time a new kernel release is
>>>>>>> out, and so should out-of-tree bpf programs.
>>>>>>
>>>>>> Assuming eBPF takes off, that would have some poor maintainer managing
>>>>>> the whole of the compatibility changes for the entire eBPF ecosystem
>>>>>> ... I really don't think that's scalable.
>>>>>
>>>>> I nevertheless still see this as the best and only option we have; that
>>>>> is, have an infrastructure in the kernel tree for maintaining eBPF
>>>>> programs, somehow sorted per subsystem so that it mirrors the standard
>>>>> maintainership / subsystem structure proper, and have the maintainers
>>>>> responsible for keeping the eBPF programs related to their subsystem in
>>>>> sync with the internal changes happening in the subsystem.
>>>>>
>>>>> At the end of the day, it will be the subsystem maintainers themsleves
>>>>> accepting the program into the tree in the first place, so it's not like
>>>>> they are receiving responsibility for something they never wanted in the
>>>>> first place. So we'll probably end up with subsystems with many eBPF
>>>>> programs, and also subsystems with zero. Similarly to tracepoints.
>>>>>
>>>>> I.e. pretty much the 'perf' model, but on much wider scale (as eBPF can
>>>>> hook to just about anything).
>>>>>
>>>>> Any other option seems to lead to having eBPF programs sprinkled all over
>>>>> the internet that depend on particular kernel version / API, leading to
>>>>> nothing else than unhappy users, because "I downloaded it, it didn't work,
>>>>> Linux sucks".
>>>>
>>>> OK, but if we keep eBPF programs this closely coupled to the kernel, then
>>>> what is the advantage of using eBPF, say for HID as was discussed earlier
>>>> in this thread, compared to just making sure HID has appropriate hooks and
>>>> the handling of the device quirks is done in normal C code (kernel module)
>>>> attached to these hooks?
>>>
>>> [sorry some of my messages are kept in the moderation queue]
>>>
>>> This is something I tried to explain in my talk at Kernel Recipes 2
>>> weeks ago [1].
>>>
>>> Basically, for regular users, it will be simpler for them to test patches:
>>> A developer patches the device through a bpf program, compiles it and
>>> sends to the user the source and the bytecode. The user just has to
>>> drop the bytecode in the file system and a udev rule automatically
>>> loads it without having to reboot the current kernel, making testing
>>> way faster and simpler for users.
>>>
>>> Then developers take the burden of upstreaming the bpf program through
>>> the usual email submission.
>>>
>>> This way users are testing the actual code that is upstreamed without
>>> too much hurdle.
>>>
>>> IMO those kinds of fixes should be in-tree because they are actual fixes.
>>>
>>>
>>>>
>>>> Because frankly for me the main value of eBPF over patching and recompiling
>>>> the kernel is that I can tweak the eBPF code exactly to my needs and load
>>>> it to the kernel without needing to reboot, over time it is less work than
>>>> maintaining a source code patch out of tree, and usually it is a hacky
>>>> tweak I use for some debugging so merging it upstream does not make sense.
>>>>
>>>
>>> And that's also why I want to give *some* guarantees that the eBPF
>>> hooks I am putting in HID are somewhat stable. Or at least I won't
>>> break everything at each release and look carefully when there is a
>>> change in the API.
>>>
>>> But these guarantees are just *my* constraints I put on *my*
>>> subsystem. I have reasons to believe I can ensure that, so I will.
>>>
>>> But I am not saying any internal HID function will have ABI
>>> guarantees. Only the few hooks I am explicitly documenting as such.
>>>
>>> So the idea is that your debugging program can live in your own tree,
>>> without being submitted, but this is just a contract between myself as
>>> a subsystem maintainer and you, not the entire eBPF or ftrace
>>> community.
>>>
>>> I made this so I can put any fancy new kernel API out in eBPF
>>> programs, that would be handled by the actual user of that kernel API.
>>
>> I think you need to clarify this, to me it now reads that you want
>> to use eBPF to implement new APIs, where as what you mean is that
>> you want to avoid the need to add new APIs like e.g. sysfs knobs
>> or kernel-module-parameters, right ?
> 
> Yes. Exactly. It's not about regular and standard API. It's a device
> specific property/feature that is usually handled through module
> parameters or custom sysfs entries that have only one single user.
> 
>>
>>> If a user wants to set some fancy feature on a particular device,
>>> instead of having a kernel parameter that no one will ever use besides
>>> that program that may be short-lived, we can then load that
>>> functionality with the eBPF program.
>>
>> I think you need to clarify here that you mean changing some settings
>> on the device through e.g. a HID feature report which would require
>> a sysfs-attribute or kernel-module-parameters without ePBF and you want
>> to avoid adding more and more sysfs-attributes / kernel-module-parameters?
> 
> Yep yep :)
> 
>>
>> At least I think this is what you are trying to say, and I think that
>> without some clarification this is not what most kernel-devs will
>> understand here.
> 
> Thanks for saying it better than I do :)

You're welcome. Actually thinking more about this I think this
is somewhat akin to Windows HID filter drivers and given BPF-s
history in packet-filtering I think that that actually is a helpful
analogy to make.

Regards,

Hans

