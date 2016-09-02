Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 92424949
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Sep 2016 18:21:40 +0000 (UTC)
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0C93523D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Sep 2016 18:21:40 +0000 (UTC)
Received: by mail-it0-f66.google.com with SMTP id c198so2699356ith.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 02 Sep 2016 11:21:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1472827326.2519.14.camel@HansenPartnership.com>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 2 Sep 2016 11:21:38 -0700
Message-ID: <CAOesGMibzGC3Nz+DmERJUea4jbJQ28hDGDGMuHkr+o=Wb3iUdA@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
	collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 2, 2016 at 7:42 AM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Fri, 2016-09-02 at 10:54 +0100, Mark Brown wrote:
>> On Thu, Sep 01, 2016 at 09:25:31PM -0400, Levin, Alexander via
>> Ksummit-discuss wrote:
>> > On Wed, Aug 31, 2016 at 10:01:13PM -0400, Alex Shi wrote:
>>
>> > > I am a Linaro stable kernel maintainer. Our stable kernel is base
>> > > on LTS plus much of upstream features backporting on them. Here
>> > > is the detailed
>>
>> > I really disagree with this approach. I think that backporting
>> > board support like what LTSI does might make sense since it's self
>> > contained, but what LSK does is just crazy.
>>
>> The bulk of these features are exactly that - they're isolated driver
>> specific code or new subsystems.  There are also some things with
>> wider impact but it's nowhere near all of them.
>
> It's crazy because it encourages precisely the wrong behaviour: vendors
> target this tree not upstream.

The one case where it is warranted is for features that went in since
the last LTS release.

Pushing vendors all the way to target a non-LTS release is a bit more
aggressive that needed, in my opinion.


-Olof
