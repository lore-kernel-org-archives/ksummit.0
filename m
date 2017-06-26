Return-Path: <alexander.levin@verizon.com>
From: "Levin, Alexander (Sasha Levin)" <alexander.levin@verizon.com>
To: Leon Romanovsky <leon@kernel.org>
Date: Mon, 26 Jun 2017 15:21:10 +0000
Message-ID: <20170626152115.fs2c7qosncoeu54d@sasha-lappy>
References: <20170625072423.GR1248@mtr-leonro.local>
	<CA+55aFx9A=5cc0QZ7CySC4F2K7eYaEfzkdYEc9JaNgCcV25=rg@mail.gmail.com>
	<20170625181954.GU1248@mtr-leonro.local>
	<CA+55aFyM7X2jWYyNeA-AgbV1A-aYJaRBsPZCG+GeO9L8W1Rqww@mail.gmail.com>
	<20170625190529.GV1248@mtr-leonro.local>
	<20170626050052.GE17296@kroah.com>
	<20170626060332.GA1248@mtr-leonro.local>
In-Reply-To: <20170626060332.GA1248@mtr-leonro.local>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <4F63CCF394F5F74FA2EF070E8E42442F@vzwcorp.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linux-foundation.org"
	<ksummit-discuss@lists.linux-foundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Driver and/or module
 versions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jun 26, 2017 at 09:03:32AM +0300, Leon Romanovsky wrote:
>OK, let's start in small scale and limit myself to MODULE_VERSION at this =
stage.
>https://patchwork.kernel.org/patch/9808651/

Isn't it the case that something like this will actually break the ABI?

I assume that a bunch of different companies have scripts that pull out the=
 module version out of the module and make sure that it's at some value tha=
t works with the rest of their tools, right?

I also have to assume that these scripts will horribly break when the value=
 just disappears.

--=20

Thanks,
Sasha=
