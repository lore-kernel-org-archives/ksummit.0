Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7884E7D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 10:40:02 +0000 (UTC)
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A44FD16A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 10:40:01 +0000 (UTC)
Received: by obdeg2 with SMTP id eg2so3925869obd.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Aug 2015 03:40:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150802143025.GF7557@n2100.arm.linux.org.uk>
References: <2111196.TG1k3f53YQ@avalon> <1832413.9MBGoll9RW@avalon>
	<alpine.DEB.2.02.1508011255010.2071@localhost6.localdomain6>
	<8475257.M7ZLAf3KQe@avalon> <20150801151839.GA9480@mtj.duckdns.org>
	<55BD68DE.5060903@roeck-us.net>
	<20150802143025.GF7557@n2100.arm.linux.org.uk>
Date: Tue, 4 Aug 2015 12:40:00 +0200
Message-ID: <CAKMK7uHHV5Kze1OMt2HL6rbKV0LVpva+h_CEGcSbC9znbJhWWQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Russell King - ARM Linux <linux@arm.linux.org.uk>
Content-Type: text/plain; charset=UTF-8
Cc: Tejun Heo <tj@kernel.org>, Shuah Khan <shuah.kh@samsung.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
	or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Aug 2, 2015 at 4:30 PM, Russell King - ARM Linux
<linux@arm.linux.org.uk> wrote:
> On Sat, Aug 01, 2015 at 05:48:30PM -0700, Guenter Roeck wrote:
>> On 08/01/2015 08:18 AM, Tejun Heo wrote:
>> >So, all in all, if we actually want to fix this issue, well at least
>> >most of it, I think the only viable way would be implementing revoke
>> >semantics and drain and sever all operations on removal.  Maybe it'll
>> >end up another devm interface.
>>
>> Maybe that is completely nonsense, but how about something like
>>       devm_get(dev);
>> to be called whenever a file used by a device is opened, and
>>       devm_put(dev);
>> whenever it is closed ?
>
> Absolutely not.  There's two problems there:
>
> 1) You'd also need to tie the lifetime of 'dev' to the lifetime of the
>    character device, which is getting to be an absurd level of lifetime
>    complexity - we can't have 'dev' vanishing before the last user of
>    the file operations has gone away, otherwise 'dev' becomes a stale
>    pointer.
>
> 2) Remember that devm encompasses not only driver allocations, but also
>    resources as well, like interrupts, iomem mappings and iomem resource
>    claiming.  As has already been stated by others, we don't want to delay
>    the release of all these resources.
>
> I think a proposition would be to come up with some kind of driver
> interface for things like chardev drivers which wraps up the lifetime
> issues of private data with the chardev driver, and switch all chardev
> drivers over to that.  The existing one is all very well, but it exposes
> a large amount of the core kernel APIs and behaviour of those APIs to
> driver authors, rather than making it Damned Simple for them.
>
> It's not that easy right now due to the way struct file_operations behaves
> - it's difficult to only intercept the ->open and ->release calls while
> forwarding the rest to a child file_operations, especially when the
> presence/absence of operations is tested for, eg:
>
>         fn = no_llseek;
>         if (file->f_mode & FMODE_LSEEK) {
>                 if (file->f_op->llseek)
>                         fn = file->f_op->llseek;
>         }
>         return fn(file, offset, whence);
>
> and:
>
>         if (filp->f_op->flock)
>                 filp->f_op->flock(filp, F_SETLKW, &fl);
>         else
>                 flock_lock_file(filp, &fl);
>
> We have lots of drivers trying to solve this issue of private data in
> their own ways.  Some use a kref, others use other methods.  Isn't it
> about time we had some kind of unification here to ease this burden on
> driver authors?
>
> We can have an argument about whether kernel driver authors should know
> about the fine details of lifetime issues which many kernel subsystem
> maintainers themselves struggle to grasp, and whether they should therefore
> be coding for the kernel at all, or whether we should be making it easy
> for driver authors to get things right.
>
> Personally, I'd prefer the latter - the simpler the interfaces, the easier
> it is for everyone to get stuff correct, and the less obscure bugs there
> will be.
>
> Okay, here's a challenge to everyone involved in this thread.  Write a
> simple character device driver which attaches to a platform device, where
> the character device driver uses private data allocated in the platform
> device probe method.  The private data is to contain a string "Hello
> World!" initialised by the probe method, and a copy of this string will
> be returned by the file_operations read() method according to the offset
> in the virtual "file".  Don't use devm_* APIs.  Private data must be
> correctly cleaned up.
>
> Let's see how many can come up with correct code. :)

I'd love to see generic support to revoke/block anything coming in
through a file_ops. Imo it' should't be just chardev but also
sysfs/debugfs/whatever else since afaiui just unregister those files
doesn't make sure that they're all closed already again. I'm very much
aware that all drm drivers are completely broken in this regard and we
started trying to fix things up a bit but honestly doing this for real
is _very_ low on my list of things to fix. There's a lot more things
that blow up daily and really annoy users, whereas hotplug seems
fairly ok with a "hope it works" approach. Mostly it's just used by
developers anyway and for that case just write scripts to stop
everything that might access your driver. Needs some work every time
you update to shut off the latest thing systemd adds, but a lot less
effort than fixing up the drivers themselves ;-)

Unfortunately I don't have the vfs knowledge to create something generic :(
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
