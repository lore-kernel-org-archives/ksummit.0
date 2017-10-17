Return-Path: <kumar.gala@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 20E46978
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 17 Oct 2017 17:02:14 +0000 (UTC)
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 032FE46F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 17 Oct 2017 17:02:12 +0000 (UTC)
Received: by mail-oi0-f44.google.com with SMTP id v9so4136660oif.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 17 Oct 2017 10:02:12 -0700 (PDT)
Content-Type: text/plain; charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Kumar Gala <kumar.gala@linaro.org>
In-Reply-To: <1508257276.74236.38.camel@freebsd.org>
Date: Tue, 17 Oct 2017 12:02:10 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <2D4E6B6D-8F07-46D0-BB36-D97916802893@linaro.org>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<20171017114823.58476908@bbrezillon>
	<CACxGe6tPQxwzN14TZtgNhw7OOuePLJxODrn-_b4gMDGzAFEf1Q@mail.gmail.com>
	<1508257276.74236.38.camel@freebsd.org>
To: Ian Lepore <ian@freebsd.org>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	devicetree-spec@vger.kernel.org,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Devicetree Workshop at Kernel Summit Prague
 (26 Oct 2017)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


> On Oct 17, 2017, at 11:21 AM, Ian Lepore <ian@freebsd.org> wrote:
>=20
> On Tue, 2017-10-17 at 14:48 +0100, Grant Likely wrote:
>> On Tue, Oct 17, 2017 at 10:48 AM, Boris Brezillon
>> <boris.brezillon@free-electrons.com> wrote:
>>>=20
>>> Hello Grant,
>>>=20
>>> On Mon, 9 Oct 2017 21:39:51 +0100
>>> Grant Likely <grant.likely@secretlab.ca> wrote:
>>>=20
>>>>=20
>>>> Kernel Summit is now just over 2 weeks away and it is time to pull
>>>> together the schedule for the Devicetree workshop. Originally I
>>>> planned on just an afternoon, but I've got the room for the whole =
day,
>>>> so I've got a lot of flexibility on the schedule. Unscheduled time =
can
>>>> be used for hacking.
>>>>=20
>>>> Date: 26 Oct 2017
>>>> Time: 9:00am-5:30pm (Lunch from 12:30-2:30)
>>>> Location: Athens room - Hilton Prague
>>>>=20
>>>> If you plan to attend, make sure you update your OSSunmitE/ELCE
>>>> registration to include the DT Workshop (log in to access and =
modify
>>>> your registration):
>>>>=20
>>>> =
https://www.regonline.com/register/login.aspx?eventID=3D1883377&MethodId=3D=
0&EventsessionId=3D&Email_Address=3D&membershipID=3D
>>>>=20
>>>> Here is my current list of topics in no particular order, including
>>>> the topic moderator:
>>>>=20
>>>> Runtime memory consumption (Rob Herring)
>>>> Overlay maintenance plan (TBC)
>>>> Stable ABI for devicetree (TBC)
>>>> DT YAML encoding (Pantelis Antoniou)
>>>> DT Schema format - option 1 (Pantelis Antoniou)
>>>> DT Schema format - option 2 (Grant Likely)
>>>> Sharing Generic bindings (TBC)
>>>> devicetree.org update (Grant)
>>>>=20
>>>> Reply to this email if you want to propose another topic.
>>> Not sure yet if I'll attend the DT workshop or not, but I thought I
>>> could ask my question here because it might be of interest to =
someone
>>> else who is attending.
>>>=20
>>> What happens when the DT bindings is not documented in Linux but in =
an
>>> another project because this project was the first to use it.
>>>=20
>>> I had the case here http://patchwork.ozlabs.org/patch/810275/, and =
I'm
>>> not sure what's the policy when this happens. Should we add a file
>>> under Documentation/devicetree/bindings/... that points to the =
external
>>> doc file, should we duplicate the DT bindings doc in Linux, or =
should
>>> we just leave the bindings undocumented in the kernel tree?
>> I'm going to add this as a topic. I've got my own opinion, but it
>> would be better to discuss in the room because it affects =
maintainers.
>>=20
>> g.
>=20
>=20
> I've run into the same thing in FreeBSD.  We use bindings and dts
> files, exacted periodically from the linux tree and imported into =
ours,
> for all modern arm boards/systems.  Several times I've created drivers
> for small things like i2c RTC chips that aren't supported currently by
> linux, and it's not clear to me that it's even possible to submit
> bindings and dts for them back upstream without also submitting a =
linux
> driver that uses them (which of course I'm not in a position to do).
>=20
> -- Ian

I think this gets to separating bindings from .dts files.  If we had a =
common place for bindings that are usable by all the various projects =
that utilize device tree that would help.  Rob=E2=80=99s point about now =
having linux maintainers of subsystems doing binding reviews is a fair =
point, because we do need more eyes on bindings.  So I think we need =
some middle ground here.

I think this also gets to having bindings described in a structured way =
so they can be utilized for validation of dts files.  We are doing a =
little of this in Zephyr since we are using a structured binding spec to =
generate code from .dts (since we don=E2=80=99t utilize a runtime dtb).

- k=
