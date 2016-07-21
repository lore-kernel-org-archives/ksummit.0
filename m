Return-Path: <shuahkhan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AA7B3899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 13:41:46 +0000 (UTC)
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 22A33187
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 13:41:46 +0000 (UTC)
Received: by mail-it0-f43.google.com with SMTP id j124so17997435ith.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 06:41:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1469094899.120686.101.camel@infradead.org>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<20160719173120.GE30372@sirena.org.uk>
	<alpine.LNX.2.00.1607192049170.24757@cbobk.fhfr.pm>
	<20160720155319.GG6509@sirena.org.uk>
	<alpine.LNX.2.00.1607201859270.24757@cbobk.fhfr.pm>
	<1469094899.120686.101.camel@infradead.org>
From: Shuah Khan <shuahkhan@gmail.com>
Date: Thu, 21 Jul 2016 07:41:44 -0600
Message-ID: <CAKocOOM4oJS-vXU9yWxt6Bjsi152iUqdj_Mqxfq-_UQkpwWBFA@mail.gmail.com>
To: David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] Support (or move
 towards to) LLVM
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 21, 2016 at 3:54 AM, David Woodhouse <dwmw2@infradead.org> wrot=
e:
> On Wed, 2016-07-20 at 19:04 +0200, Jiri Kosina wrote:
>> On Wed, 20 Jul 2016, Mark Brown wrote:
>>
>> > > > There's a push from certain quarters to move away from GCC to LLVM=
.
>> >
>> > > This might actually be an interesting topic per se.
>> >
>> > Yes, indeed.
>>
>> Let's make this a real proposal then ... (subject changed). I am again a
>> bit unsure about the core / tech division here.
>>
>> People who should be invited: proponents of the push from the certain
>> quarters mentioned by Mark above, and ideally some LLVM folks as well.
>>
>> I've never actually used llvm to compile the kernel (which makes me rath=
er
>> poor contributor should any such discussion happen), but I've been on th=
e
>> "receiving side", debugging a crash that turned out to be llvm messing u=
p
>> with IF in a way that interfers with local_irq_save(), and also suffered
>> from the followup frustration when I found out that this has been report=
ed
>> to llvm folks ages ago, and they haven't bothered to fix it (it's now at
>> least worked around, in a very sub-optimal way (lahf/sahf)).
>
> I got involved in building the kernel with LLVM a little while ago,
> after accidentally implementing .code16 support in LLVM =E2=80=94 for oth=
er
> reasons, but it allowed the arch/x86/boot/ bits to be built with LLVM.
>
> Apart from resolutely not wanting to implement variable length arrays
> on the stack, the LLVM folks actually seem quite keen to make things
> work. I'm interested in the problem you report above.. and note the
> absence of a bug number. Can you provide it?
>
> You're right that it does take a while to get some things fixed, but
> people *are* doing a fairly good job of identifying them, filing bugs,
> and implementing workarounds until the bugs can be fixed.
>
> Building with LLVM has also helped to find some real kernel bugs. I'd
> be keen to get this working more widely.
>

Would you be willing to share your experiences and the nature of bugs
you were able to find using LLVM. Maybe that could be folded into this
discussion as a real life experience.

thanks,
-- Shuah
