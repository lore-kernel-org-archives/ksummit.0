Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 95B32BBC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 20:46:48 +0000 (UTC)
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DC364F7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 20:46:47 +0000 (UTC)
Received: by iecuq6 with SMTP id uq6so142736231iec.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 07 Jul 2015 13:46:47 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <20150707144725.6a19727f@gandalf.local.home>
References: <20150707092434.GE11162@sirena.org.uk>
	<CACVxJT8Ae3t9x=jF-xy6NunqZCbgOoaNxy9AqOxuDg8Dx=Tk6g@mail.gmail.com>
	<20150707131411.GI2887@sirena.org.uk>
	<20150707144725.6a19727f@gandalf.local.home>
Date: Tue, 7 Jul 2015 13:46:47 -0700
Message-ID: <CAGXu5jJN7z0Fa78SmyCe0mWE6mRY5f+giL-8CY_Li3tYwYeZrg@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset=UTF-8
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Tyler Baker <tyler.baker@linaro.org>, Mark Brown <broonie@sirena.org.uk>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 7, 2015 at 11:47 AM, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Tue, 7 Jul 2015 14:14:11 +0100
> Mark Brown <broonie@sirena.org.uk> wrote:
>
>> On Tue, Jul 07, 2015 at 04:02:13PM +0300, Alexey Dobriyan wrote:
>> > On Tue, Jul 7, 2015 at 12:24 PM, Mark Brown <broonie@kernel.org> wrote:
>>
>> > >  - Should we start carrying config fragments upstream designed to
>> > >    support testing, things like the distro config fragments that keep
>> > >    getting discussed are one example here but there's other things like
>> > >    collections of debug options we could be looking at.
>>
>> > This will gravitate everyone to running the same config which is the opposite
>> > of what you want.
>>
>> Perhaps, perhaps not - it's not an unequivocal thing either way.  The
>> more barriers there are to enabling things the more likely it is that
>> people just won't bother in the first place (or that they'll run into
>> somme problem and give up before they get things working) and it's not
>> clear that having to figure these things out is always a good use of
>> people's time.
>
> The testing/selftests tests should have three results: PASS, FAIL,
> UNSUPPORTED. The UNSUPPORTED is what should be returned if the kernel
> configuration doesn't have the needed features configured. For example,
> if you run the ftrace selftests without function tracing enabled, all
> the tests that test the function tracer return UNSUPPORTED.
>
> Perhaps we should have a central location that each test needs to add
> the required configuration for it to be properly tested. Then if users
> want to test various subsystems, they would look in this location for
> the proper configs (be it a directory that has files of the tests they
> represent, and contain the configs needed). Then there should be no
> real barrier for people to run these tests.
>
> Of course if the test requires certain hardware, or a file system, then
> that should be properly documented.

There's also sysctl settings, and we also want privilege level as part
of that configuration. (i.e. some tests should run as root, some show
not, etc). It'd be nice to have the tests report these in some
machine-readable form so that a test harness could check, prepare the
environment, and then run the tests.

-Kees

-- 
Kees Cook
Chrome OS Security
