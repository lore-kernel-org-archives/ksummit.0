Return-Path: <kvalo@codeaurora.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C2AD126C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 11:15:15 +0000 (UTC)
Received: from smtp.codeaurora.org (smtp.codeaurora.org [198.145.29.96])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A57CD16E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 11:15:14 +0000 (UTC)
From: Kalle Valo <kvalo@codeaurora.org>
To: Joe Perches <joe@perches.com>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<1472348579.26978.47.camel@perches.com>
Date: Mon, 29 Aug 2016 14:15:10 +0300
In-Reply-To: <1472348579.26978.47.camel@perches.com> (Joe Perches's message of
	"Sat, 27 Aug 2016 18:42:59 -0700")
Message-ID: <874m634yip.fsf@purkki.adurom.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Sasha Levin <levinsasha928@gmail.com>, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Joe Perches <joe@perches.com> writes:

> On Sat, 2016-08-27 at 21:06 -0400, Levin, Alexander wrote:
>> On Sat, Aug 27, 2016 at 04:40:52PM -0400, Joe Perches wrote:
>> > On Fri, Aug 26, 2016 at 01:26:35PM +0200, Greg KH wrote:
>> > > On Fri, Aug 26, 2016 at 12:46:51AM -0400, Levin, Alexander wrote:
>> > > >=20
>> > > > =C2=A0=C2=A0=C2=A0=C2=A0- Making checkpatch check for (some) of th=
e stable kernel rules
>> > > > =C2=A0=C2=A0=C2=A0=C2=A0(and possibly recommend adding the stable@=
 tag in certain cases?).
>> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0- Depends on: making checkpatc=
h sane again
>> > > > >This sounds interesting.=C2=A0=C2=A0What do you mean by "sane"?
>> > Sasha, can you expand your thoughts here please?
>> Sure. I have 2.5 concerns about the state of checkpatch:
> []
>> > Most all of the trivial spacing stuff can easily be
>> > ignored either by a human determining what's important
>> > or by using command line options like --ignore=3Dspacing
>> 1.
>> This is the wrong default. By default checkpatch shouldn't be showing tr=
ivial
>> issues that encourage folks to try and work around them and as a result
>> produce worse code.
>>=20
>> Look at the 80 character limit warning for example, what good does it do?
>
> That argument's been done several times. It keeps Linus happy.
> I don't care one way or another.
>
> I think the biggest issue is the seriousness that some people
> take checkpatch messages as dicta instead of ignorable bleats.

I wish that checkpatch would have a way to enable/disable warnings per
directory (or file). For example, there would be
drivers/net/wireless/ath/ath10k/.checkpatch which would disable the
warnings are not suitable for ath10k for one reason or another:

'MSLEEP',
'USLEEP_RANGE',
'PRINTK_WITHOUT_KERN_LEVEL',
'NETWORKING_BLOCK_COMMENT_STYLE',
'BLOCK_COMMENT_STYLE',
'LINUX_VERSION_CODE',
'COMPLEX_MACRO',
'PREFER_DEV_LEVEL',
'PREFER_PR_LEVEL',
'COMPARISON_TO_NULL',
'BIT_MACRO',
'CONSTANT_COMPARISON',
'MACRO_WITH_FLOW_CONTROL'

Currently my workaround is to have a custom ath10k-check script[1] which
runs checkpatch with those checks disabled. Oh, and it also filters out
some of the warnings based on the symbol it is located in.

https://github.com/qca/qca-swiss-army-knife/blob/master/tools/scripts/ath10=
k/ath10k-check

--=20
Kalle Valo
