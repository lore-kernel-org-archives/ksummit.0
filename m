Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 591C5955
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 12:09:48 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3606C1BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 12:09:47 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: David Woodhouse <dwmw2@infradead.org>, David Howells <dhowells@redhat.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>
In-Reply-To: <1470310312.51922.25.camel@infradead.org>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<87poprsaza.fsf@intel.com>
	<1470310312.51922.25.camel@infradead.org>
Date: Thu, 04 Aug 2016 15:07:48 +0300
Message-ID: <87wpjwohyj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: Dave Gordon <david.s.gordon@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the
	linux	kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 04 Aug 2016, David Woodhouse <dwmw2@infradead.org> wrote:
> On Tue, 2016-08-02 at 13:48 +0300, Jani Nikula wrote:
>> On Thu, 21 Jul 2016, David Howells <dhowells@redhat.com> wrote:
>> >=C2=A0 (3) Let's use bool a lot more for boolean values as the compiler=
 might be
>> >=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 able to make better choices with it.
>>=20
>> This would be particularly useful for boolean one-bit struct bitfield
>> flags (not least because assigning any positive even number to unsigned
>> int foo:1 will result in 0) *but* we've found gcc produces worse code
>> for bool:1 in our case. Details at [1].
>>=20
>> BR,
>> Jani.
>>=20
>>=20
>> [1] http://patchwork.freedesktop.org/patch/msgid/1463148278-23193-1-git-=
send-email-jani.nikula@intel.com
>
> In that entire discussion I don't see any mention of a GCC PR being
> filed.
>
> Why?

I guess something along these lines: Everybody was sure that Somebody
would do it. Anybody could have done it, but Nobody did it. Somebody got
angry about that, because it was Everybody's job. Everybody thought
Anybody could do it, but Nobody realized that Everybody wouldn't do
it. It ended up that Everybody blamed Somebody when Nobody did what
Anybody could have.

Dave (Gordon, Cc'd), you seemed to have the best grasp of what was going
on, would you mind filing that GCC bug please? https://gcc.gnu.org/bugs/


BR,
Jani.


--=20
Jani Nikula, Intel Open Source Technology Center
