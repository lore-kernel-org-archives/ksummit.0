Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DD07F8CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 20:52:40 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[212.209.106.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E17722026F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 20:52:39 +0000 (UTC)
Message-ID: <53EA7E91.9070401@sonymobile.com>
Date: Tue, 12 Aug 2014 13:52:33 -0700
From: Tim Bird <tim.bird@sonymobile.com>
MIME-Version: 1.0
To: Steven Rostedt <rostedt@goodmis.org>
References: <53E38ED5.9000300@samsung.com>	<53E43365.50809@hitachi.com>	<53E8CF03.6020308@samsung.com>	<53E8EB93.8030301@hitachi.com>	<20140812130043.4894DC40C5C@trevor.secretlab.ca>	<53EA3DA0.2070407@roeck-us.net>	<CACxGe6vYNjEAZT6YhB5WNyh40urSEVRbmVaWjEt6nQNUbgMbPw@mail.gmail.com>	<53EA5300.8060403@sonymobile.com>
	<20140812140637.412540bc@gandalf.local.home>
In-Reply-To: <20140812140637.412540bc@gandalf.local.home>
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit
Cc: "shuah.kh@samsung.com" <shuah.kh@samsung.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
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

On 08/12/2014 11:06 AM, Steven Rostedt wrote:
> On Tue, 12 Aug 2014 10:46:40 -0700
> Tim Bird <tim.bird@sonymobile.com> wrote:
>
>
>> I've been doing the same thing, focused on using Aboriginal.  I have
>> some scripts that I've used for years for abstracting the
>> build/boot/test cycle for cross-platform hardware, that I can share.
>> But my qemu foo is not so good.
>>
>> I thought my scripts might overlap with the ktest stuff Steve Rostedt is
>> doing, and wanted to chat with him at the summit about what parts might
>> make sense in the kernel tree, and how I might integrate my higher-level
>> scripts to work with ktest.pl.
>
> Unfortunately, I wont be at KS this year. I have a family commitment
> that conflicts for the date.
>
> I will be, though, at ELCEU. I'm suspecting that you will be there too.
> Can it wait till October?

If I feel like pushing stuff sooner, we can always chat on LKML over 
patches. :-)  But basicallly, yeah, we can chat at ELCE.
  -- Tim
