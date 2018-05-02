Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AF15511
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 May 2018 19:42:35 +0000 (UTC)
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0098.outbound.protection.outlook.com [104.47.40.98])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0845762C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 May 2018 19:42:34 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Willy Tarreau <w@1wt.eu>
Date: Wed, 2 May 2018 19:42:33 +0000
Message-ID: <20180502194139.GA18390@sasha-vm>
References: <20180501163818.GD1468@sasha-vm>
	<20180501194450.GD10479@thunk.org> <20180501200019.GA7397@sasha-vm>
	<20180501205448.GE10479@thunk.org> <20180501220228.GD7397@sasha-vm>
	<20180502043017.GA11938@1wt.eu>
In-Reply-To: <20180502043017.GA11938@1wt.eu>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <1FCAA105DE9EBD44AF6E8D9BD126E782@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 02, 2018 at 06:30:17AM +0200, Willy Tarreau wrote:
>On Tue, May 01, 2018 at 10:02:30PM +0000, Sasha Levin wrote:
>> On Tue, May 01, 2018 at 04:54:48PM -0400, Theodore Y. Ts'o wrote:
>> >Post -rc3 or -rc4, in my opinion bug fixes should wait until the next
>> >merge window before they get merged at all.  (And certainly features
>> >bugs should be Right Out.)  And sure, bug fixes should certainly get
>> >more testing.  So I guess my main objection is your making a blanket
>> >statement about all fixes, instead of breaking out regression fixes
>> >versus bug fixes.  Since in my opinion they are very different animals.=
..
>>
>> I understant your point, you want to make fixes available to testers as
>> soon as possible. This might make sense, as you've mentioned, in < -rc3.
>>
>> So yes, maybe the solution isn't to force -next, but rather add more
>> "quiet time" at the end of the cycle? Make special rules for -rc7/8? Or
>> even add a "test"/"beta" release at the end of the cycle?
>
>I disagree with the proposals above, and for multiple reasons :
>  - leaving a known bug on purpose automatically degrades the quality of
>    each release. Given that less than 100% of the fixes introduce
>    regressions, by not merging any of these fixes, we'll end up with
>    more bugs. That's a very bad idea.
>
>  - this will give a worse image of dot-0 releases, and users will be
>    even less interested in testing them, prefering to wait for the
>    first stable version. In this case what's the point of dot-0 if it
>    is known broken and nobody uses it ?
>
>  - letting fixes rot longer on the developer side will send a very bad
>    signal to developers : "we don't care about your bugs". Companies
>    relying on contractors will have a harder time including fixes in
>    the contract, as it will only cover what's needed to get the feature
>    merged. Again this will put the focus on extremely fast and dirty
>    development, given that fixes will not be considered during the same
>    window.

I'm not advocating to keep bugs in. If there is a fix, but the developer
can't indicate that proper testing was done on the fix we should revert
the new feature rather than merge the untested fix in.

The way I see it, if a commit can get one or two tested-by, it's a good
alternative to a week in -next.

>I'd rather do the exact opposite except for those who introduce too many
>regressions : set up a delay penalty to developers who create too many
>regressions and make this penalty easy to check. I think it will generally
>not affect subsystem maintainers, unless they pull and push lots of crap
>without checking, of course. But it could prove very useful for those
>developing under contract, because companies employing them will want to
>ensure that their work will not be delayed due to a penalty. Thus is will
>be important for these developers to be more careful.
>
>After all, the person proposing a fix always knows better than anyone
>else if this fix was done seriously or not. Developers who do lots of
>testing before sending should not be penalized, and should get their
>fix merged immediately. Those who just send untested patches should be
>trusted much less.

I'm a bit worried about (social) side effects of a scheme like this.

>> From what I see, the same number of bugs-per-line-of-code applies for
>> commits accross all -rc releases, so while it makes sense to get a fix
>> in quickly at -rc1 to allow testing to continue, the same must not
>> happen during -rc8, but unfourtenately it does now.
>
>That's where I strongly disagree, since it would mean releasing with even
>more bugs than today.

Just don't release it. If we don't have a tested fix for a reported
regression either extend the release cycle (-rc10+) or just revert the
new feature and get it in the next merge window.=
