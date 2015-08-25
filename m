Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1EAA4BC8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 16:33:30 +0000 (UTC)
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E2A6563
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 16:33:28 +0000 (UTC)
Received: by iodv127 with SMTP id v127so192997470iod.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 09:33:28 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <20150825163034.GB12878@sirena.org.uk>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<CAKocOOP19WowbqaUBxESDd5Q5E4fPYpgPvKTqMn8JhTEhqJEAw@mail.gmail.com>
	<20150825163034.GB12878@sirena.org.uk>
Date: Tue, 25 Aug 2015 09:33:27 -0700
Message-ID: <CAGXu5jLkkiE8mAbfqSC=KzLuZ+hxarbmPfmCS2tNCVd8dTyPNA@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Emily Ratliff <eratliff@linuxfoundation.org>,
	Shuah Khan <shuahkh@osg.samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 25, 2015 at 9:30 AM, Mark Brown <broonie@kernel.org> wrote:
> On Tue, Aug 25, 2015 at 09:15:32AM -0600, Shuah Khan wrote:
>> On Mon, Aug 24, 2015 at 10:35 AM, Kees Cook <keescook@chromium.org> wrote:
>
>> > I agree with the sentiment here, but not with the language. Finding
>> > flaws (which is what selftests, KASan, Trinity, etc do) isn't
>> > hardening. Hardening is stopping the exploitation of flaws. The
>> > hardening the kernel needs is about taking away exploitation tools,
>> > not killing bugs. (Though killing bugs is still great.)
>
>> I agree with Kees on this. Kselftest or any other test suites can help
>> with regression testing and make sure Kernel works the way it should.
>> Also these tests can tell us if kernel is hardened or not.
>
>> Hardening means something different to me. i.e making sure kernel
>> can protect against attacks and fail gracefully. This is something to
>> address during design and development process.
>
> Testsuites can help here if we get into the habit of making sure they
> exercise error conditions; they're off to the side a bit but they can
> be a useful way of promoting good practice (at least in my experience).

Yeah, this is what I've done with a bunch of the newer tests in the
lkdtm module. They're designed to Oops the machine by performing
actions that should be caught by various mitigations (e.g. writing to
kernel text, executing userspace memory from the kernel, etc).

-Kees

-- 
Kees Cook
Chrome OS Security
