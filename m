Return-Path: <rob@landley.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 879A2928
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 03:10:16 +0000 (UTC)
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EF5851F746
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 03:10:15 +0000 (UTC)
Received: by mail-ob0-f169.google.com with SMTP id uz6so1591223obc.14
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 17 Aug 2014 20:10:15 -0700 (PDT)
Message-ID: <53F16E95.4080206@landley.net>
Date: Sun, 17 Aug 2014 22:10:13 -0500
From: Rob Landley <rob@landley.net>
MIME-Version: 1.0
To: Andy Lutomirski <luto@amacapital.net>, Guenter Roeck <linux@roeck-us.net>
References: <53E38ED5.9000300@samsung.com> <53E43365.50809@hitachi.com>
	<53E8CF03.6020308@samsung.com> <53E8EB93.8030301@hitachi.com>
	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
	<CACRpkdZL_1Enxd2dTnaEvZkHuCfV08f74ZOqFqaRtEdyMmwtvA@mail.gmail.com>
	<53EB8E4F.9090008@roeck-us.net>
	<CALCETrXvoActJKwwfU_N6RmNP8xnhdAJ-Muf7hfmWquQOZzc-w@mail.gmail.com>
In-Reply-To: <CALCETrXvoActJKwwfU_N6RmNP8xnhdAJ-Muf7hfmWquQOZzc-w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: shuah.kh@samsung.com, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] kselftest - What's in 3.17 and plans for 3.18
 and beyond
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/13/2014 11:16 AM, Andy Lutomirski wrote:
> On Wed, Aug 13, 2014 at 9:11 AM, Guenter Roeck <linux@roeck-us.net> wrote:
>> For my own qemu runtime tests, I ended up collecting root file systems and
>> kernel configurations from all over the place. And then there is the problem
>> of qemu command line parameters, where each target and architecture requires
>> its own set of options, and it is sometimes all but impossible to find a
>> working set of parameters for a given target/architecture combination.
>>
> 
> virtme has exactly this problem (except for the root image part --
> virtme can use debootstrap output directly).  In virtme, I'm trying to
> solve it by just collecting known-working QEMU arguments and
> documenting the corresponding kernel config requirements.

My aboriginal linux system is designed around the assumption that nobody
will ever actually bother to use it. (That's why I ship prebuilt binary
tarballs.)

I also write extensive documentation nobody will ever read:

http://landley.net/aboriginal/about.html

Each system-image tarball has a "run-emulator.sh" script that's just the
qemu invocation. If you want to know how to launch qemu for the target:
there you go.

The kernel config is using the "miniconfig" technique:

http://landley.net/aboriginal/FAQ.html#dev_miniconfig

You assemble the miniconfig from the target-independent parts:

http://landley.net/hg/aboriginal/file/tip/sources/baseconfig-linux

And then concatenate the target-specific bits from the relevant
sources/targets file. ala:

http://landley.net/hg/aboriginal/file/tip/sources/targets/i686#l19

(All the target-specific information is in a single file under
sources/targets. There are various patches in sources/patches some of
which are target specific. All of them should go upstream, but kernel
development is so insular it's just not worth the effort.)

If you don't want to use miniconfig, the expanded configs are in the
root-filesystem tarballs (in the src directory).

> --Andy
> .
> 
