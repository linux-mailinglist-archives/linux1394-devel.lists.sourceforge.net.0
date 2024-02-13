Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F801852DB3
	for <lists+linux1394-devel@lfdr.de>; Tue, 13 Feb 2024 11:18:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rZprt-0007hZ-6m;
	Tue, 13 Feb 2024 10:18:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tasos@tasossah.com>) id 1rZprq-0007hS-IT
 for linux1394-devel@lists.sourceforge.net;
 Tue, 13 Feb 2024 10:18:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/GbuicxOxMnnY8+pVlCGptU9pDz10zmlKB0bZCyLyh4=; b=CVR/dbFgiGVNPNe7DxaU+un4jr
 tiY+EOEemWIiKLqPHyAhg16CGYcQeE/PHFzoG/SdYc45oAtdRETki4Vesfx6OQp5AtqYplFsBXm0x
 rph1t+Vvr6yrlCBvk7VC9y/Q0COYEY4wWIVW6S7udtgufu2Ka11lhw7QdWFZ0fxDrYlk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/GbuicxOxMnnY8+pVlCGptU9pDz10zmlKB0bZCyLyh4=; b=QvEDt+JBP6gz2WPzvzFlfhIplC
 h/jkZmlLM+6n9pc6BsaYNACYcUiwNGyCswePlIV/4Qefg7Z2iwAEThT5vNxJlU7JL1QL0g9OjdMO0
 hu41BeYVy2pkoC+rNSTqj0TqhwwzYA3lxMnmrmi1djOQlPRCzlNuGH/0AC6xM3XPhJW0=;
Received: from devnull.tasossah.com ([91.121.165.14])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rZprn-0002Fj-CY for linux1394-devel@lists.sourceforge.net;
 Tue, 13 Feb 2024 10:18:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=devnull.tasossah.com; s=vps; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/GbuicxOxMnnY8+pVlCGptU9pDz10zmlKB0bZCyLyh4=; b=KODDZRTC3oclZa+IwuQQN6Qp/w
 1adr3TOcxZi6EuAP6V6ay42uHZwQ/aq0jZcCpbx+VXeuP+Dl6TzzhzrhnZYMeWQ7eGuHg3L4MPOp8
 Sm7s7c+0ILo79D+onMSnkFjJOA6Vh+vEvCxb0krUj5oOoexA3aN5CLuy4I+zWy2eTxhg=;
Received: from [2a02:587:6a0e:de00::d54]
 by devnull.tasossah.com with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <tasos@tasossah.com>)
 id 1rZprY-008cxU-3b; Tue, 13 Feb 2024 12:18:04 +0200
Message-ID: <20cede4b-8060-4f6f-8a9b-7cb986a3d1b4@tasossah.com>
Date: Tue, 13 Feb 2024 12:18:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Question regarding linux1394 and bug report
Content-Language: el-GR, en-GB
To: Adam Goldman <adamg@pobox.com>
References: <67f8f49f-0e95-49d4-abf5-9cb4692d9dd3@tasossah.com>
 <20240105150222.GA11325@workstation.local> <ZahqJTeKy6W2IRix@iguana.24-8.net>
 <36ab63e4-91a2-415f-9dca-0bd748aa58da@tasossah.com>
 <Za9jagkjzL4uVFkC@iguana.24-8.net> <ZcsyUsWtzoLzfPwu@iguana.24-8.net>
Autocrypt: addr=tasos@tasossah.com; keydata=
 xsFNBFhyWVcBEADVELXbk5Xn/wh5VoGfZboTxp3dX8+aUXJ/cLH7hh68VuTPM1M0dEQTv5iW
 xP2VVONdujPlEMSXXPZjFifs3yNK02S1t2szl4+bteFm7uIMjzKFaIDHSddccvaSXQ3ZzKMx
 aywYgIIe5/3oJnVlg9yE/1ZGok2Qss73YMst+dbYDkO+43v4tnXTWF8MbqyDVA2E1+Aa43Gh
 BukdbrTPzXk4WGpxN9wLLgpmLScL17Lh9k1XejJ7lXCMfSfXX3/fyLtuHr0Df2DDZ6LX0blw
 Nf7McYmmNWU67KBMkRhKFBScYVpDX+gnqocaxITzWo4d/NQtBPAeYHq4ursA70AcHxBkdrUf
 CYdRTd0iT7NvYuJut8g7Z8MtLFFJoRI3vCAay0YXzhjSw1ozIkFl90WUh3SqOArbPmp1li6L
 4t/gjTf9jcBZvBBPZo4k3Jzioq8qAMZZcqzChUtPYYGpr+4YJako0gtjJaVsJPxDBeMmvh3/
 qXntii2PuXmzXBb3S/0720ym2dgLeF6fe+Lu0bNQbAB31tAANzpC+nftnzdFB8MgRgkHnqQr
 wSWRsVwySvkxwJqOaeBug7DokW5KiWKEc5vUs0N+h+wboeP6bl9rouehgJo5wxGdWzaoJPp6
 quyQOmEVodcJrwYQm31cMekUDj2zW7OGjSzuEcP7rBPwSgSY1QARAQABzSRUYXNvcyBTYWhh
 bmlkaXMgPHRhc29zQHRhc29zc2FoLmNvbT7CwXcEEwEIACEFAlhyWVcCGwMFCwkIBwIGFQgJ
 CgsCBBYCAwECHgECF4AACgkQAaHcuiLgBcQ97A//an1iqkH0qT55W7vtUaWlRVwB8dhBgcZo
 PbdlGAL2aBleuTRQ3zBuMr1fOBGSn/01Xkp80SfjNpW7ps+eTWRFHo6SjoeU4GzX7y0yvoFc
 dpFsjrrteHyOyn4mbG9lrt4z3uvQ9LxMNOucgXOlDaibQbfzeIUGBO1YLaaOLtsC81TGj0iU
 KkDYcTr5fgqEc15sSywDPF+jWMbFEalDyMYL8+WKsUTUkaooinQ6omIhU0xTQe8TtDwtSyFf
 brgPem9P1DlFPK6Dty4z6LiUrtTxvcs8UhbAHMxUEYQ40yNpJKhDc1KgFb3UtRl9CYG8my27
 O088UCWJ7KAWSr1u2i7rx5A+eChfiXyQ+n27AIPvPtEJDLTb/nD3v46Xtf1T2n9T0Yaq1OFA
 uUrz9uFb4y3EdNa/t0eQPm6BgHWfZ5dszOu+pqNeOdvtQqJbeZ8ogx9BwoBPuQ4mCnnXMkjb
 aniO51avZ6fOHOCoh/TwiLCGLypKjrQ8vJQ/Rc8u1GyZTtOhFikvz6SZeznQs7Sst7eaWcxz
 70FZBeV1r5Yed/VmTpX++t4N/41gKzLbohXgYTPBnBzXBIcpA5s07VuWvK4SdXLV2H2QvaxS
 Ypp7iIy5oVoPvcFLNH+OHEudcPQOPByboHqe60SdMPyxrer9cuxemGEikFbesYnZGC/N6nJJ
 3AzOwU0EWHJZVwEQANTB2/2ZRi3zoS/znvraUrZ2lggOgyLZCh3Wy9AA7msvkuyrQjoVuPnK
 4thaGmLGbQJEguKbCyMbKJTynm2gpwGouEzqhfYZURyb4WtT/wUEk5+WMwLvFOc00JlWjs5e
 bEkADo6NkMOUq3AI23Mh0qstfgS5kCm7iJi+9SRIgSZzRkoghd4cBUJWhHt6MZggjPtUPl4d
 Y6LG/odcFBiHOSM+TVOKWo5LVwUAUodt5cSqop6ol7PiByfcPewl4m/kQJSjLqzOjgFUW5Gs
 aHpulIXf+OfzEwmHyla7R+f/scwrpMDrJLHyqzvInogq17hf3AM2XlyNfhwz02KqsuOVUrv4
 NtJbyg2V906+LwTNI+HRviUBnfWiAwlHiiUXQ1dTBHI9ZOyZhLUAS2ejyqCJMovCL/+Ldd7Z
 EVw68UzhkPWi6mMC0XzOC4pmAEawvmxZRkBE+1kLRR1UkcQe7EB45QF2bDDpqEvumLJMWzKo
 Lx5X2U24LaQ+m+z43xc09MHdt1xaZvZcax4qDT5N5fmPWj/6STM38DGOq7Bdvhc8LrR5aAnM
 OijsDsxbtj7HLTHiHZKsH+tP1LbzXg5Ffbysvek7bF8Bq79TG6CjbTpGsud8QzpXOpquVRSt
 Pr2E6Xt3DYbBdJ7Nk9RsVQ7DrGeaHl24ScuPOw8WihY80SXOaWvNABEBAAHCwV8EGAEIAAkF
 AlhyWVcCGwwACgkQAaHcuiLgBcS3txAA0qDQSgzjCPgnwPHI1HGyj2vQVww50a5sAvjVfGLG
 cuA7Y7FdUVrPtBmMfcIqNezgX3vu2ChVUSXW5yKXuTJfZ+r3D3YMVIwL444ECOU1EpdrN5XM
 Gy5OSP+mm13G4s2DOKu6qk8lUt26UfSJeROntFnVrty2xHfHy/lEhyh/w36LAxngMYhxIFNr
 7punXSTyvTXTgBJmENvA2K9ClB7XmaihIzVIMSZ+q8olE0QVzS3EnpHTqmAUkI4pyUzBC1h/
 s/dm5S6UxGA91XGaUSYavJOXT7yFqs8wHGdIxzzS6YMgNLuTRhCmMjsNJ7Qrj1swwRFapU8b
 V0IPIDBMRCizS6R5L803p1jKSkDnSqxFqZOQs1E60tQkPeKKDrYFZiAdoJA72M+445LeI+UZ
 J9AZN07ou/KOI45rZr4b6mOa/9ZLeiCOOtw3duUf4aCbX7mZCx/h/6ftR0ORSZYXngUcyeHU
 LGgUMIh4G/AErjVzHN14l32vXOw2Gqtm/ZOB6Dbc8TE6xZfvhm8umKDSJMMgUwGpmR0afFqY
 z1BoGgqb+Obimcy8gj/lHTEJ3XuAsWVgh6qdAW+btexzxFNBZNRlvf0iWKS9ZrJoGm75vP6G
 cq8pgdDuXavruyMo+8FAM271vGEkaQdYOegODcSPutYoK8jtXj3r5zRHvSbk1xOOsIw=
In-Reply-To: <ZcsyUsWtzoLzfPwu@iguana.24-8.net>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2024-02-13 11:11, Adam Goldman wrote: > Hi Tasos, > > I
 can confirm that the same problem occurs on a JVC GR-D30U connected to >
 an XIO2213B OHCI chip. So it's not specific to the TSB43AB22A, and i [...]
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rZprn-0002Fj-CY
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
From: Tasos Sahanidis via linux1394-devel
 <linux1394-devel@lists.sourceforge.net>
Reply-To: Tasos Sahanidis <tasos@tasossah.com>
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On 2024-02-13 11:11, Adam Goldman wrote:
> Hi Tasos,
> 
> I can confirm that the same problem occurs on a JVC GR-D30U connected to 
> an XIO2213B OHCI chip. So it's not specific to the TSB43AB22A, and it 
> affects several JVC models. I haven't investigated fully.
> 
> -- Adam

Thank you for still looking into this. Apologies the late response once 
more. Things got a bit out of hand...

On 2024-01-23 08:57, Adam Goldman wrote:
> The camera's oPCR0 register (the response to the read of '904) has the 
> online and broadcast bits clear, indicating that the output plug will 
> not be sending any video. I wonder why? (Compare to the value c03f3c7a 
> in the 2.6.35-rc3 case, which has the online and broadcast bits set.)

I noticed dvgrab complaining about "libiec61883 warning: Transmission
node has no plugs online!" but I thought it said the same thing when
it worked, thus I ignored it. That is actually not the case. It warns
about something else.

> What do the 6.7 logs look like when the camera is first turned on,
> starting with the first evt_bus_reset?

And here is why things got out of hand. I booted 2.6 to capture the 
logs, ran dvgrab to make sure it worked, rebooted to 6.7 while leaving 
the camera plugged in and re-ran dvgrab on 6.7 and it worked.

I thought maybe it works if the system boots with the camera plugged in, 
so I powered off the system, power cycled the camera, and booted 
directly to 6.7. Except 6.7 crashed on boot without any logs. I did not 
at the time have another machine with a serial port, so I was unable to 
gather any logs, and I didn't have time to test out netconsole. A few 
more reboots with the camera plugged in, and the system eventually 
booted, but I got the following mess:

[   88.040334] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[message repeated every 5~10us]
[   88.062147] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062155] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062162] firewire_ohci 0000:01:03.0: IRQ 00020010 AR_req busReset
[   88.062169] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062173] firewire_ohci 0000:01:03.0: AR evt_bus_reset, generation 9
[   88.062176] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062183] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062191] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062198] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062205] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062212] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062219] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062227] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062234] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062241] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062248] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062255] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062262] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062269] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062277] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062284] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062291] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062298] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062306] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062313] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062320] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062327] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062334] firewire_ohci 0000:01:03.0: IRQ 00030000 selfID busReset
[   88.062344] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062351] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062360] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   88.062365] firewire_ohci 0000:01:03.0: 1 selfIDs, generation 9, local node ID ffc0
[   88.062369] firewire_ohci 0000:01:03.0: selfID 0: 807f8c52, phy 0 [--.] S400 gc=63 -3W Lci
[   88.570753] firewire_core 0000:01:03.0: rediscovered device fw0
[   92.597987] firewire_ohci 0000:01:03.0: IRQ 00020010 AR_req busReset
[   92.598010] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598019] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598027] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598034] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598038] firewire_ohci 0000:01:03.0: AR evt_bus_reset, generation 10
[   92.598041] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598049] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598059] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598067] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598074] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598081] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598088] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598096] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598103] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598110] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598117] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598123] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598131] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598138] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598146] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598153] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598160] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598168] firewire_ohci 0000:01:03.0: IRQ 00030000 selfID busReset
[   92.598177] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598185] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598192] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598199] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598206] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.598213] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[more repeats]
[   92.602565] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602572] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602581] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602585] firewire_ohci 0000:01:03.0: 2 selfIDs, generation 10, local node ID ffc1
[   92.602588] firewire_ohci 0000:01:03.0: selfID 0: 807f0880, phy 0 [p..] S100 gc=63 +0W Lc
[   92.602593] firewire_ohci 0000:01:03.0: selfID 0: 817f8cd2, phy 1 [c-.] S400 gc=63 -3W Lci
[   92.602621] firewire_core 0000:01:03.0: phy config: new root=ffc1, gap_count=5
[   92.602632] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   92.602637] firewire_ohci 0000:01:03.0: AT ack_complete, PHY 01c50000 fe3affff
[   92.602650] firewire_ohci 0000:01:03.0: IRQ 00020010 AR_req busReset
[   92.602655] firewire_ohci 0000:01:03.0: AR evt_bus_reset, generation 11
[   92.602657] firewire_ohci 0000:01:03.0: IRQ 00020010 AR_req busReset
[   92.602662] firewire_ohci 0000:01:03.0: AR evt_bus_reset, generation 11
[   92.602664] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602671] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602678] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602685] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602692] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602699] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602706] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602713] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602720] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602727] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602734] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602742] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602749] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602756] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602763] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602771] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602777] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602785] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602792] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602799] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602806] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602814] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602821] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602828] firewire_ohci 0000:01:03.0: IRQ 00030000 selfID busReset
[   92.602839] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602847] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602854] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.602858] firewire_ohci 0000:01:03.0: 2 selfIDs, generation 12, local node ID ffc1
[   92.602861] firewire_ohci 0000:01:03.0: selfID 0: 80450880, phy 0 [p..] S100 gc=5 +0W Lc
[   92.602864] firewire_ohci 0000:01:03.0: selfID 0: 81458cd2, phy 1 [c-.] S400 gc=5 -3W Lci
[   92.996576] firewire_ohci 0000:01:03.0: IRQ 00020010 AR_req busReset
[   92.996591] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996600] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996606] firewire_ohci 0000:01:03.0: AR evt_bus_reset, generation 13
[   92.996609] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996617] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996625] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996632] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996639] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996647] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996654] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996661] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996668] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996675] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996682] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996689] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996696] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996704] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996711] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996718] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996725] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996733] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996740] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996747] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996754] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996761] firewire_ohci 0000:01:03.0: IRQ 00030000 selfID busReset
[   92.996771] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996779] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996787] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   92.996791] firewire_ohci 0000:01:03.0: 2 selfIDs, generation 13, local node ID ffc1
[   92.996794] firewire_ohci 0000:01:03.0: selfID 0: 807f0882, phy 0 [p..] S100 gc=63 +0W Lci
[   92.996798] firewire_ohci 0000:01:03.0: selfID 0: 817f8cd0, phy 1 [c-.] S400 gc=63 -3W Lc
[   93.114543] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.114551] firewire_ohci 0000:01:03.0: AT spd 0 tl 18, ffc1 -> ffc0, ack_pending , QR req, fffff0000400
[   93.114591] firewire_core 0000:01:03.0: rediscovered device fw0
[   93.114598] firewire_core 0000:01:03.0: giving up on node ffc0: reading config rom failed: bus reset
[   93.114601] firewire_core 0000:01:03.0: phy config: new root=ffc1, gap_count=5
[   93.114613] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.114618] firewire_ohci 0000:01:03.0: AT ack_complete, PHY 01c50000 fe3affff
[   93.114629] firewire_ohci 0000:01:03.0: IRQ 00020010 AR_req busReset
[   93.114634] firewire_ohci 0000:01:03.0: AR evt_bus_reset, generation 14
[   93.114637] firewire_ohci 0000:01:03.0: IRQ 00020010 AR_req busReset
[   93.114641] firewire_ohci 0000:01:03.0: AR evt_bus_reset, generation 14
[   93.114644] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114651] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114658] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114664] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114671] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114677] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114684] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114690] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114697] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114703] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114711] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114717] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114723] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114730] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114736] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114743] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114749] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114756] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114763] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114769] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114776] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114783] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114789] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114797] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114803] firewire_ohci 0000:01:03.0: IRQ 00030000 selfID busReset
[   93.114812] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114821] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
[   93.114824] firewire_ohci 0000:01:03.0: 2 selfIDs, generation 15, local node ID ffc1
[   93.114827] firewire_ohci 0000:01:03.0: selfID 0: 80450880, phy 0 [p..] S100 gc=5 +0W Lc
[   93.114830] firewire_ohci 0000:01:03.0: selfID 0: 81458cd2, phy 1 [c-.] S400 gc=5 -3W Lci
[   93.626524] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.626532] firewire_ohci 0000:01:03.0: AT spd 0 tl 31, ffc1 -> ffc0, ack_pending , QR req, fffff0000400
[   93.626566] firewire_core 0000:01:03.0: rediscovered device fw0
[   93.627196] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.627202] firewire_ohci 0000:01:03.0: AR spd 0 tl 31, ffc0 -> ffc1, ack_complete, QR resp = 0426907c
[   93.627218] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.627223] firewire_ohci 0000:01:03.0: AT spd 0 tl 0a, ffc1 -> ffc0, ack_pending , QR req, fffff0000404
[   93.628200] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.628204] firewire_ohci 0000:01:03.0: AR spd 0 tl 0a, ffc0 -> ffc1, ack_complete, QR resp = 31333934
[   93.628220] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.628224] firewire_ohci 0000:01:03.0: AT spd 0 tl 0b, ffc1 -> ffc0, ack_pending , QR req, fffff0000408
[   93.629190] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.629195] firewire_ohci 0000:01:03.0: AR spd 0 tl 0b, ffc0 -> ffc1, ack_complete, QR resp = e0644000
[   93.629211] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.629216] firewire_ohci 0000:01:03.0: AT spd 0 tl 0c, ffc1 -> ffc0, ack_pending , QR req, fffff000040c
[   93.630213] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.630217] firewire_ohci 0000:01:03.0: AR spd 0 tl 0c, ffc0 -> ffc1, ack_complete, QR resp = 00808801
[   93.630233] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.630238] firewire_ohci 0000:01:03.0: AT spd 0 tl 0d, ffc1 -> ffc0, ack_pending , QR req, fffff0000410
[   93.631190] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.631196] firewire_ohci 0000:01:03.0: AR spd 0 tl 0d, ffc0 -> ffc1, ack_complete, QR resp = 035809f1
[   93.634527] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.634533] firewire_ohci 0000:01:03.0: AT spd 0 tl 0e, ffc1 -> ffc0, ack_pending , QR req, fffff0000414
[   93.635194] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.635201] firewire_ohci 0000:01:03.0: AR spd 0 tl 0e, ffc0 -> ffc1, ack_complete, QR resp = 0008c442
[   93.635221] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.635227] firewire_ohci 0000:01:03.0: AT spd 0 tl 0f, ffc1 -> ffc0, ack_pending , QR req, fffff0000418
[   93.636207] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.636214] firewire_ohci 0000:01:03.0: AR spd 0 tl 0f, ffc0 -> ffc1, ack_complete, QR resp = 03008088
[   93.636234] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.636239] firewire_ohci 0000:01:03.0: AT spd 0 tl 10, ffc1 -> ffc0, ack_pending , QR req, fffff000041c
[   93.637190] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.637196] firewire_ohci 0000:01:03.0: AR spd 0 tl 10, ffc0 -> ffc1, ack_complete, QR resp = 8100000f
[   93.637218] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.637223] firewire_ohci 0000:01:03.0: AT spd 0 tl 11, ffc1 -> ffc0, ack_pending , QR req, fffff0000420
[   93.638205] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.638211] firewire_ohci 0000:01:03.0: AR spd 0 tl 11, ffc0 -> ffc1, ack_complete, QR resp = 0c0083c0
[   93.638231] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.638236] firewire_ohci 0000:01:03.0: AT spd 0 tl 12, ffc1 -> ffc0, ack_pending , QR req, fffff0000424
[   93.639190] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.639196] firewire_ohci 0000:01:03.0: AR spd 0 tl 12, ffc0 -> ffc1, ack_complete, QR resp = d1000005
[   93.639217] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.639222] firewire_ohci 0000:01:03.0: AT spd 0 tl 13, ffc1 -> ffc0, ack_pending , QR req, fffff0000428
[   93.640463] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.640469] firewire_ohci 0000:01:03.0: AR spd 0 tl 13, ffc0 -> ffc1, ack_complete, QR resp = 8d000013
[   93.640489] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.640494] firewire_ohci 0000:01:03.0: AT spd 0 tl 14, ffc1 -> ffc0, ack_pending , QR req, fffff000042c
[   93.641358] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.641364] firewire_ohci 0000:01:03.0: AR spd 0 tl 14, ffc0 -> ffc1, ack_complete, QR resp = c3000008
[   93.641385] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.641390] firewire_ohci 0000:01:03.0: AT spd 0 tl 15, ffc1 -> ffc0, ack_pending , QR req, fffff0000430
[   93.642261] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.642268] firewire_ohci 0000:01:03.0: AR spd 0 tl 15, ffc0 -> ffc1, ack_complete, QR resp = 1701006b
[   93.642288] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.642293] firewire_ohci 0000:01:03.0: AT spd 0 tl 16, ffc1 -> ffc0, ack_pending , QR req, fffff0000434
[   93.643279] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.643285] firewire_ohci 0000:01:03.0: AR spd 0 tl 16, ffc0 -> ffc1, ack_complete, QR resp = 81000013
[   93.643306] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.643311] firewire_ohci 0000:01:03.0: AT spd 0 tl 17, ffc1 -> ffc0, ack_pending , QR req, fffff0000480
[   93.644196] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.644202] firewire_ohci 0000:01:03.0: AR spd 0 tl 17, ffc0 -> ffc1, ack_complete, QR resp = 0006c2ad
[   93.644224] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.644228] firewire_ohci 0000:01:03.0: AT spd 0 tl 19, ffc1 -> ffc0, ack_pending , QR req, fffff0000484
[   93.645196] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.645202] firewire_ohci 0000:01:03.0: AR spd 0 tl 19, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[   93.645222] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.645227] firewire_ohci 0000:01:03.0: AT spd 0 tl 1a, ffc1 -> ffc0, ack_pending , QR req, fffff0000488
[   93.646201] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.646207] firewire_ohci 0000:01:03.0: AR spd 0 tl 1a, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[   93.646227] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.646232] firewire_ohci 0000:01:03.0: AT spd 0 tl 1b, ffc1 -> ffc0, ack_pending , QR req, fffff000048c
[   93.647195] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.647202] firewire_ohci 0000:01:03.0: AR spd 0 tl 1b, ffc0 -> ffc1, ack_complete, QR resp = 47522d44
[   93.647222] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.647227] firewire_ohci 0000:01:03.0: AT spd 0 tl 1c, ffc1 -> ffc0, ack_pending , QR req, fffff0000490
[   93.648199] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.648206] firewire_ohci 0000:01:03.0: AR spd 0 tl 1c, ffc0 -> ffc1, ack_complete, QR resp = 32300000
[   93.648226] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.648231] firewire_ohci 0000:01:03.0: AT spd 0 tl 1d, ffc1 -> ffc0, ack_pending , QR req, fffff0000494
[   93.649190] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.649196] firewire_ohci 0000:01:03.0: AR spd 0 tl 1d, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[   93.649216] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.649221] firewire_ohci 0000:01:03.0: AT spd 0 tl 1e, ffc1 -> ffc0, ack_pending , QR req, fffff0000498
[   93.650216] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.650222] firewire_ohci 0000:01:03.0: AR spd 0 tl 1e, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[   93.650242] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.650247] firewire_ohci 0000:01:03.0: AT spd 0 tl 1f, ffc1 -> ffc0, ack_pending , QR req, fffff000044c
[   93.651189] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.651196] firewire_ohci 0000:01:03.0: AR spd 0 tl 1f, ffc0 -> ffc1, ack_complete, QR resp = 0002ad09
[   93.651216] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.651221] firewire_ohci 0000:01:03.0: AT spd 0 tl 20, ffc1 -> ffc0, ack_pending , QR req, fffff0000450
[   93.652268] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.652275] firewire_ohci 0000:01:03.0: AR spd 0 tl 20, ffc0 -> ffc1, ack_complete, QR resp = 1701006b
[   93.652296] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.652301] firewire_ohci 0000:01:03.0: AT spd 0 tl 21, ffc1 -> ffc0, ack_pending , QR req, fffff0000454
[   93.653258] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.653264] firewire_ohci 0000:01:03.0: AR spd 0 tl 21, ffc0 -> ffc1, ack_complete, QR resp = 8100000b
[   93.653284] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.653289] firewire_ohci 0000:01:03.0: AT spd 0 tl 22, ffc1 -> ffc0, ack_pending , QR req, fffff0000480
[   93.654189] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.654196] firewire_ohci 0000:01:03.0: AR spd 0 tl 22, ffc0 -> ffc1, ack_complete, QR resp = 0006c2ad
[   93.654217] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.654222] firewire_ohci 0000:01:03.0: AT spd 0 tl 23, ffc1 -> ffc0, ack_pending , QR req, fffff0000484
[   93.655210] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.655216] firewire_ohci 0000:01:03.0: AR spd 0 tl 23, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[   93.655236] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.655241] firewire_ohci 0000:01:03.0: AT spd 0 tl 24, ffc1 -> ffc0, ack_pending , QR req, fffff0000488
[   93.656192] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.656198] firewire_ohci 0000:01:03.0: AR spd 0 tl 24, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[   93.656219] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.656224] firewire_ohci 0000:01:03.0: AT spd 0 tl 25, ffc1 -> ffc0, ack_pending , QR req, fffff000048c
[   93.657199] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.657205] firewire_ohci 0000:01:03.0: AR spd 0 tl 25, ffc0 -> ffc1, ack_complete, QR resp = 47522d44
[   93.657225] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.657230] firewire_ohci 0000:01:03.0: AT spd 0 tl 26, ffc1 -> ffc0, ack_pending , QR req, fffff0000490
[   93.658184] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.658190] firewire_ohci 0000:01:03.0: AR spd 0 tl 26, ffc0 -> ffc1, ack_complete, QR resp = 32300000
[   93.658210] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.658215] firewire_ohci 0000:01:03.0: AT spd 0 tl 27, ffc1 -> ffc0, ack_pending , QR req, fffff0000494
[   93.659191] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.659197] firewire_ohci 0000:01:03.0: AR spd 0 tl 27, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[   93.659217] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.659222] firewire_ohci 0000:01:03.0: AT spd 0 tl 28, ffc1 -> ffc0, ack_pending , QR req, fffff0000498
[   93.660359] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.660365] firewire_ohci 0000:01:03.0: AR spd 0 tl 28, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[   93.660386] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.660391] firewire_ohci 0000:01:03.0: AT spd 0 tl 29, ffc1 -> ffc0, ack_pending , QR req, fffff0000474
[   93.661245] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.661251] firewire_ohci 0000:01:03.0: AR spd 0 tl 29, ffc0 -> ffc1, ack_complete, QR resp = 0002f1df
[   93.661271] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.661276] firewire_ohci 0000:01:03.0: AT spd 0 tl 2a, ffc1 -> ffc0, ack_pending , QR req, fffff0000478
[   93.662314] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.662320] firewire_ohci 0000:01:03.0: AR spd 0 tl 2a, ffc0 -> ffc1, ack_complete, QR resp = 00808801
[   93.662342] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.662347] firewire_ohci 0000:01:03.0: AT spd 0 tl 2b, ffc1 -> ffc0, ack_pending , QR req, fffff000047c
[   93.663245] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.663252] firewire_ohci 0000:01:03.0: AR spd 0 tl 2b, ffc0 -> ffc1, ack_complete, QR resp = 035809f1
[   93.663272] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.663277] firewire_ohci 0000:01:03.0: AT spd 0 tl 2c, ffc1 -> ffc0, ack_pending , QR req, fffff0000438
[   93.664189] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.664195] firewire_ohci 0000:01:03.0: AR spd 0 tl 2c, ffc0 -> ffc1, ack_complete, QR resp = 00043327
[   93.664215] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.664220] firewire_ohci 0000:01:03.0: AT spd 0 tl 2d, ffc1 -> ffc0, ack_pending , QR req, fffff000043c
[   93.665190] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.665196] firewire_ohci 0000:01:03.0: AR spd 0 tl 2d, ffc0 -> ffc1, ack_complete, QR resp = 1200a02d
[   93.665215] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.665220] firewire_ohci 0000:01:03.0: AT spd 0 tl 2e, ffc1 -> ffc0, ack_pending , QR req, fffff0000440
[   93.666195] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.666201] firewire_ohci 0000:01:03.0: AR spd 0 tl 2e, ffc0 -> ffc1, ack_complete, QR resp = 13010001
[   93.666222] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.666227] firewire_ohci 0000:01:03.0: AT spd 0 tl 2f, ffc1 -> ffc0, ack_pending , QR req, fffff0000444
[   93.667191] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.667198] firewire_ohci 0000:01:03.0: AR spd 0 tl 2f, ffc0 -> ffc1, ack_complete, QR resp = 1701006b
[   93.667218] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.667223] firewire_ohci 0000:01:03.0: AT spd 0 tl 30, ffc1 -> ffc0, ack_pending , QR req, fffff0000448
[   93.668195] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.668201] firewire_ohci 0000:01:03.0: AR spd 0 tl 30, ffc0 -> ffc1, ack_complete, QR resp = 8100000e
[   93.668222] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.668227] firewire_ohci 0000:01:03.0: AT spd 0 tl 31, ffc1 -> ffc0, ack_pending , QR req, fffff0000480
[   93.669189] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.669195] firewire_ohci 0000:01:03.0: AR spd 0 tl 31, ffc0 -> ffc1, ack_complete, QR resp = 0006c2ad
[   93.669216] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.669221] firewire_ohci 0000:01:03.0: AT spd 0 tl 32, ffc1 -> ffc0, ack_pending , QR req, fffff0000484
[   93.670207] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.670213] firewire_ohci 0000:01:03.0: AR spd 0 tl 32, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[   93.670234] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.670240] firewire_ohci 0000:01:03.0: AT spd 0 tl 33, ffc1 -> ffc0, ack_pending , QR req, fffff0000488
[   93.671189] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.671196] firewire_ohci 0000:01:03.0: AR spd 0 tl 33, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[   93.671215] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.671220] firewire_ohci 0000:01:03.0: AT spd 0 tl 34, ffc1 -> ffc0, ack_pending , QR req, fffff000048c
[   93.672189] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.672195] firewire_ohci 0000:01:03.0: AR spd 0 tl 34, ffc0 -> ffc1, ack_complete, QR resp = 47522d44
[   93.672216] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.672221] firewire_ohci 0000:01:03.0: AT spd 0 tl 35, ffc1 -> ffc0, ack_pending , QR req, fffff0000490
[   93.673258] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.673264] firewire_ohci 0000:01:03.0: AR spd 0 tl 35, ffc0 -> ffc1, ack_complete, QR resp = 32300000
[   93.673285] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.673290] firewire_ohci 0000:01:03.0: AT spd 0 tl 36, ffc1 -> ffc0, ack_pending , QR req, fffff0000494
[   93.674208] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.674214] firewire_ohci 0000:01:03.0: AR spd 0 tl 36, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[   93.674234] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.674239] firewire_ohci 0000:01:03.0: AT spd 0 tl 37, ffc1 -> ffc0, ack_pending , QR req, fffff0000498
[   93.675199] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.675206] firewire_ohci 0000:01:03.0: AR spd 0 tl 37, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[   93.675226] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.675231] firewire_ohci 0000:01:03.0: AT spd 0 tl 38, ffc1 -> ffc0, ack_pending , QR req, fffff0000458
[   93.676182] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.676188] firewire_ohci 0000:01:03.0: AR spd 0 tl 38, ffc0 -> ffc1, ack_complete, QR resp = 0006c930
[   93.676208] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.676213] firewire_ohci 0000:01:03.0: AT spd 0 tl 39, ffc1 -> ffc0, ack_pending , QR req, fffff000045c
[   93.677191] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.677198] firewire_ohci 0000:01:03.0: AR spd 0 tl 39, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[   93.677219] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.677224] firewire_ohci 0000:01:03.0: AT spd 0 tl 3a, ffc1 -> ffc0, ack_pending , QR req, fffff0000460
[   93.678206] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.678212] firewire_ohci 0000:01:03.0: AR spd 0 tl 3a, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[   93.678232] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.678237] firewire_ohci 0000:01:03.0: AT spd 0 tl 3b, ffc1 -> ffc0, ack_pending , QR req, fffff0000464
[   93.679189] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.679196] firewire_ohci 0000:01:03.0: AR spd 0 tl 3b, ffc0 -> ffc1, ack_complete, QR resp = 4a564300
[   93.679217] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.679222] firewire_ohci 0000:01:03.0: AT spd 0 tl 3c, ffc1 -> ffc0, ack_pending , QR req, fffff0000468
[   93.680495] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.680501] firewire_ohci 0000:01:03.0: AR spd 0 tl 3c, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[   93.680521] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.680526] firewire_ohci 0000:01:03.0: AT spd 0 tl 3d, ffc1 -> ffc0, ack_pending , QR req, fffff000046c
[   93.681271] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.681277] firewire_ohci 0000:01:03.0: AR spd 0 tl 3d, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[   93.681298] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[   93.681303] firewire_ohci 0000:01:03.0: AT spd 0 tl 3e, ffc1 -> ffc0, ack_pending , QR req, fffff0000470
[   93.682268] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[   93.682274] firewire_ohci 0000:01:03.0: AR spd 0 tl 3e, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[   93.682413] firewire_core 0000:01:03.0: created device fw1: GUID 00808801035809f1, S100
[   95.130472] firewire_core 0000:01:03.0: giving up on node ffc0: reading config rom failed: timeout
[  106.570273] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  106.570285] firewire_ohci 0000:01:03.0: AT spd 0 tl 3f, ffc1 -> ffc0, ack_pending , QR req, fffff0000900
[  106.571063] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  106.571068] firewire_ohci 0000:01:03.0: AR spd 0 tl 3f, ffc0 -> ffc1, ack_complete, QR resp = 3fffff01
[  106.571099] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  106.571103] firewire_ohci 0000:01:03.0: AT spd 0 tl 00, ffc1 -> ffc0, ack_pending , QR req, fffff0000904
[  106.572046] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  106.572050] firewire_ohci 0000:01:03.0: AR spd 0 tl 00, ffc0 -> ffc1, ack_complete, QR resp = 003f007a
[  106.572323] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  106.572328] firewire_ohci 0000:01:03.0: AT spd 0 tl 01, ffc1 -> ffc0, ack_pending , QR req, fffff0000900
[  106.573127] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  106.573133] firewire_ohci 0000:01:03.0: AR spd 0 tl 01, ffc0 -> ffc1, ack_complete, QR resp = 3fffff01
[  106.574782] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  106.574788] firewire_ohci 0000:01:03.0: AT spd 0 tl 02, ffc1 -> ffc0, ack_pending , QR req, fffff0000904
[  106.575058] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  106.575064] firewire_ohci 0000:01:03.0: AR spd 0 tl 02, ffc0 -> ffc1, ack_complete, QR resp = 003f007a
[  109.996589] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  109.996600] firewire_ohci 0000:01:03.0: AT spd 0 tl 04, ffc1 -> ffc0, ack_pending , QR req, fffff0000900
[  109.997292] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  109.997298] firewire_ohci 0000:01:03.0: AR spd 0 tl 04, ffc0 -> ffc1, ack_complete, QR resp = 3fffff01
[  109.999979] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  109.999986] firewire_ohci 0000:01:03.0: AT spd 0 tl 05, ffc1 -> ffc0, ack_pending , QR req, fffff0000904
[  110.001363] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  110.001367] firewire_ohci 0000:01:03.0: AR spd 0 tl 05, ffc0 -> ffc1, ack_complete, QR resp = 003f007a

If my log files are correct, this is what I got when plugging in the 
camera after the system had successfully booted with 6.7:

[  230.503956] firewire_ohci 0000:01:03.0: IRQ 00000010 AR_req
[  230.503981] firewire_ohci 0000:01:03.0: AR evt_bus_reset, generation 2
[  230.504136] firewire_ohci 0000:01:03.0: IRQ 00010000 selfID
[  230.504181] firewire_ohci 0000:01:03.0: 2 selfIDs, generation 2, local node ID ffc1
[  230.504185] firewire_ohci 0000:01:03.0: selfID 0: 807f0880, phy 0 [p..] S100 gc=63 +0W Lc
[  230.504189] firewire_ohci 0000:01:03.0: selfID 0: 817f8cd2, phy 1 [c-.] S400 gc=63 -3W Lci
[  230.504217] firewire_core 0000:01:03.0: phy config: new root=ffc1, gap_count=5
[  230.504228] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  230.504233] firewire_ohci 0000:01:03.0: AT ack_complete, PHY 01c50000 fe3affff
[  230.504246] firewire_ohci 0000:01:03.0: IRQ 00000010 AR_req
[  230.504251] firewire_ohci 0000:01:03.0: AR evt_bus_reset, generation 3
[  230.504253] firewire_ohci 0000:01:03.0: AR evt_bus_reset, generation 3
[  230.504420] firewire_ohci 0000:01:03.0: IRQ 00010000 selfID
[  230.504432] firewire_ohci 0000:01:03.0: 2 selfIDs, generation 4, local node ID ffc1
[  230.504435] firewire_ohci 0000:01:03.0: selfID 0: 80450880, phy 0 [p..] S100 gc=5 +0W Lc
[  230.504438] firewire_ohci 0000:01:03.0: selfID 0: 81458cd2, phy 1 [c-.] S400 gc=5 -3W Lci
[  230.903826] firewire_ohci 0000:01:03.0: IRQ 00000010 AR_req
[  230.903839] firewire_ohci 0000:01:03.0: AR evt_bus_reset, generation 5
[  230.904006] firewire_ohci 0000:01:03.0: IRQ 00010000 selfID
[  230.904024] firewire_ohci 0000:01:03.0: 2 selfIDs, generation 5, local node ID ffc1
[  230.904028] firewire_ohci 0000:01:03.0: selfID 0: 807f0882, phy 0 [p..] S100 gc=63 +0W Lci
[  230.904031] firewire_ohci 0000:01:03.0: selfID 0: 817f8cd0, phy 1 [c-.] S400 gc=63 -3W Lc
[  231.007999] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.008006] firewire_ohci 0000:01:03.0: AT spd 0 tl 24, ffc1 -> ffc0, ack_pending , QR req, fffff0000400
[  231.008041] firewire_core 0000:01:03.0: rediscovered device fw0
[  231.008048] firewire_core 0000:01:03.0: giving up on node ffc0: reading config rom failed: bus reset
[  231.008051] firewire_core 0000:01:03.0: phy config: new root=ffc1, gap_count=5
[  231.008061] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.008066] firewire_ohci 0000:01:03.0: AT ack_complete, PHY 01c50000 fe3affff
[  231.008078] firewire_ohci 0000:01:03.0: IRQ 00000010 AR_req
[  231.008083] firewire_ohci 0000:01:03.0: AR evt_bus_reset, generation 6
[  231.008084] firewire_ohci 0000:01:03.0: AR evt_bus_reset, generation 6
[  231.008252] firewire_ohci 0000:01:03.0: IRQ 00010000 selfID
[  231.008263] firewire_ohci 0000:01:03.0: 2 selfIDs, generation 7, local node ID ffc1
[  231.008266] firewire_ohci 0000:01:03.0: selfID 0: 80450880, phy 0 [p..] S100 gc=5 +0W Lc
[  231.008269] firewire_ohci 0000:01:03.0: selfID 0: 81458cd2, phy 1 [c-.] S400 gc=5 -3W Lci
[  231.519999] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.520005] firewire_ohci 0000:01:03.0: AT spd 0 tl 3d, ffc1 -> ffc0, ack_pending , QR req, fffff0000400
[  231.520040] firewire_core 0000:01:03.0: rediscovered device fw0
[  231.520544] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.520549] firewire_ohci 0000:01:03.0: AR spd 0 tl 3d, ffc0 -> ffc1, ack_complete, QR resp = 0426907c
[  231.520566] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.520571] firewire_ohci 0000:01:03.0: AT spd 0 tl 16, ffc1 -> ffc0, ack_pending , QR req, fffff0000404
[  231.521559] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.521563] firewire_ohci 0000:01:03.0: AR spd 0 tl 16, ffc0 -> ffc1, ack_complete, QR resp = 31333934
[  231.521579] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.521584] firewire_ohci 0000:01:03.0: AT spd 0 tl 17, ffc1 -> ffc0, ack_pending , QR req, fffff0000408
[  231.522618] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.522622] firewire_ohci 0000:01:03.0: AR spd 0 tl 17, ffc0 -> ffc1, ack_complete, QR resp = e0644000
[  231.522638] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.522642] firewire_ohci 0000:01:03.0: AT spd 0 tl 18, ffc1 -> ffc0, ack_pending , QR req, fffff000040c
[  231.523564] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.523569] firewire_ohci 0000:01:03.0: AR spd 0 tl 18, ffc0 -> ffc1, ack_complete, QR resp = 00808801
[  231.523585] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.523589] firewire_ohci 0000:01:03.0: AT spd 0 tl 19, ffc1 -> ffc0, ack_pending , QR req, fffff0000410
[  231.524566] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.524573] firewire_ohci 0000:01:03.0: AR spd 0 tl 19, ffc0 -> ffc1, ack_complete, QR resp = 035809f1
[  231.528002] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.528008] firewire_ohci 0000:01:03.0: AT spd 0 tl 1a, ffc1 -> ffc0, ack_pending , QR req, fffff0000414
[  231.528709] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.528715] firewire_ohci 0000:01:03.0: AR spd 0 tl 1a, ffc0 -> ffc1, ack_complete, QR resp = 0008c442
[  231.528735] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.528740] firewire_ohci 0000:01:03.0: AT spd 0 tl 1b, ffc1 -> ffc0, ack_pending , QR req, fffff0000418
[  231.529563] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.529569] firewire_ohci 0000:01:03.0: AR spd 0 tl 1b, ffc0 -> ffc1, ack_complete, QR resp = 03008088
[  231.529590] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.529594] firewire_ohci 0000:01:03.0: AT spd 0 tl 1c, ffc1 -> ffc0, ack_pending , QR req, fffff000041c
[  231.530553] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.530559] firewire_ohci 0000:01:03.0: AR spd 0 tl 1c, ffc0 -> ffc1, ack_complete, QR resp = 8100000f
[  231.530578] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.530583] firewire_ohci 0000:01:03.0: AT spd 0 tl 1d, ffc1 -> ffc0, ack_pending , QR req, fffff0000420
[  231.531571] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.531577] firewire_ohci 0000:01:03.0: AR spd 0 tl 1d, ffc0 -> ffc1, ack_complete, QR resp = 0c0083c0
[  231.531599] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.531604] firewire_ohci 0000:01:03.0: AT spd 0 tl 1e, ffc1 -> ffc0, ack_pending , QR req, fffff0000424
[  231.532554] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.532560] firewire_ohci 0000:01:03.0: AR spd 0 tl 1e, ffc0 -> ffc1, ack_complete, QR resp = d1000005
[  231.532580] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.532584] firewire_ohci 0000:01:03.0: AT spd 0 tl 1f, ffc1 -> ffc0, ack_pending , QR req, fffff0000428
[  231.533545] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.533551] firewire_ohci 0000:01:03.0: AR spd 0 tl 1f, ffc0 -> ffc1, ack_complete, QR resp = 8d000013
[  231.533572] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.533576] firewire_ohci 0000:01:03.0: AT spd 0 tl 20, ffc1 -> ffc0, ack_pending , QR req, fffff000042c
[  231.534551] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.534557] firewire_ohci 0000:01:03.0: AR spd 0 tl 20, ffc0 -> ffc1, ack_complete, QR resp = c3000008
[  231.534576] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.534581] firewire_ohci 0000:01:03.0: AT spd 0 tl 21, ffc1 -> ffc0, ack_pending , QR req, fffff0000430
[  231.535783] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.535789] firewire_ohci 0000:01:03.0: AR spd 0 tl 21, ffc0 -> ffc1, ack_complete, QR resp = 1701006b
[  231.535809] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.535814] firewire_ohci 0000:01:03.0: AT spd 0 tl 22, ffc1 -> ffc0, ack_pending , QR req, fffff0000434
[  231.536551] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.536558] firewire_ohci 0000:01:03.0: AR spd 0 tl 22, ffc0 -> ffc1, ack_complete, QR resp = 81000013
[  231.536577] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.536582] firewire_ohci 0000:01:03.0: AT spd 0 tl 23, ffc1 -> ffc0, ack_pending , QR req, fffff0000480
[  231.537558] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.537564] firewire_ohci 0000:01:03.0: AR spd 0 tl 23, ffc0 -> ffc1, ack_complete, QR resp = 0006c2ad
[  231.537584] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.537589] firewire_ohci 0000:01:03.0: AT spd 0 tl 25, ffc1 -> ffc0, ack_pending , QR req, fffff0000484
[  231.538566] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.538572] firewire_ohci 0000:01:03.0: AR spd 0 tl 25, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  231.538592] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.538597] firewire_ohci 0000:01:03.0: AT spd 0 tl 26, ffc1 -> ffc0, ack_pending , QR req, fffff0000488
[  231.539578] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.539584] firewire_ohci 0000:01:03.0: AR spd 0 tl 26, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  231.539603] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.539608] firewire_ohci 0000:01:03.0: AT spd 0 tl 27, ffc1 -> ffc0, ack_pending , QR req, fffff000048c
[  231.540603] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.540609] firewire_ohci 0000:01:03.0: AR spd 0 tl 27, ffc0 -> ffc1, ack_complete, QR resp = 47522d44
[  231.540630] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.540635] firewire_ohci 0000:01:03.0: AT spd 0 tl 28, ffc1 -> ffc0, ack_pending , QR req, fffff0000490
[  231.541550] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.541555] firewire_ohci 0000:01:03.0: AR spd 0 tl 28, ffc0 -> ffc1, ack_complete, QR resp = 32300000
[  231.541575] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.541580] firewire_ohci 0000:01:03.0: AT spd 0 tl 29, ffc1 -> ffc0, ack_pending , QR req, fffff0000494
[  231.542638] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.542644] firewire_ohci 0000:01:03.0: AR spd 0 tl 29, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  231.542663] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.542668] firewire_ohci 0000:01:03.0: AT spd 0 tl 2a, ffc1 -> ffc0, ack_pending , QR req, fffff0000498
[  231.543556] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.543562] firewire_ohci 0000:01:03.0: AR spd 0 tl 2a, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  231.543581] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.543586] firewire_ohci 0000:01:03.0: AT spd 0 tl 2b, ffc1 -> ffc0, ack_pending , QR req, fffff000044c
[  231.544560] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.544566] firewire_ohci 0000:01:03.0: AR spd 0 tl 2b, ffc0 -> ffc1, ack_complete, QR resp = 0002ad09
[  231.544586] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.544591] firewire_ohci 0000:01:03.0: AT spd 0 tl 2c, ffc1 -> ffc0, ack_pending , QR req, fffff0000450
[  231.545552] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.545559] firewire_ohci 0000:01:03.0: AR spd 0 tl 2c, ffc0 -> ffc1, ack_complete, QR resp = 1701006b
[  231.545581] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.545587] firewire_ohci 0000:01:03.0: AT spd 0 tl 2d, ffc1 -> ffc0, ack_pending , QR req, fffff0000454
[  231.546569] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.546575] firewire_ohci 0000:01:03.0: AR spd 0 tl 2d, ffc0 -> ffc1, ack_complete, QR resp = 8100000b
[  231.546596] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.546601] firewire_ohci 0000:01:03.0: AT spd 0 tl 2e, ffc1 -> ffc0, ack_pending , QR req, fffff0000480
[  231.547699] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.547705] firewire_ohci 0000:01:03.0: AR spd 0 tl 2e, ffc0 -> ffc1, ack_complete, QR resp = 0006c2ad
[  231.547725] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.547730] firewire_ohci 0000:01:03.0: AT spd 0 tl 2f, ffc1 -> ffc0, ack_pending , QR req, fffff0000484
[  231.548597] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.548603] firewire_ohci 0000:01:03.0: AR spd 0 tl 2f, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  231.548624] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.548629] firewire_ohci 0000:01:03.0: AT spd 0 tl 30, ffc1 -> ffc0, ack_pending , QR req, fffff0000488
[  231.549654] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.549660] firewire_ohci 0000:01:03.0: AR spd 0 tl 30, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  231.549679] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.549684] firewire_ohci 0000:01:03.0: AT spd 0 tl 31, ffc1 -> ffc0, ack_pending , QR req, fffff000048c
[  231.550564] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.550570] firewire_ohci 0000:01:03.0: AR spd 0 tl 31, ffc0 -> ffc1, ack_complete, QR resp = 47522d44
[  231.550590] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.550595] firewire_ohci 0000:01:03.0: AT spd 0 tl 32, ffc1 -> ffc0, ack_pending , QR req, fffff0000490
[  231.551552] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.551558] firewire_ohci 0000:01:03.0: AR spd 0 tl 32, ffc0 -> ffc1, ack_complete, QR resp = 32300000
[  231.551578] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.551583] firewire_ohci 0000:01:03.0: AT spd 0 tl 33, ffc1 -> ffc0, ack_pending , QR req, fffff0000494
[  231.552565] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.552571] firewire_ohci 0000:01:03.0: AR spd 0 tl 33, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  231.552591] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.552596] firewire_ohci 0000:01:03.0: AT spd 0 tl 34, ffc1 -> ffc0, ack_pending , QR req, fffff0000498
[  231.553556] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.553562] firewire_ohci 0000:01:03.0: AR spd 0 tl 34, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  231.553581] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.553586] firewire_ohci 0000:01:03.0: AT spd 0 tl 35, ffc1 -> ffc0, ack_pending , QR req, fffff0000474
[  231.554558] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.554564] firewire_ohci 0000:01:03.0: AR spd 0 tl 35, ffc0 -> ffc1, ack_complete, QR resp = 0002f1df
[  231.554584] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.554589] firewire_ohci 0000:01:03.0: AT spd 0 tl 36, ffc1 -> ffc0, ack_pending , QR req, fffff0000478
[  231.555789] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.555795] firewire_ohci 0000:01:03.0: AR spd 0 tl 36, ffc0 -> ffc1, ack_complete, QR resp = 00808801
[  231.555816] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.555821] firewire_ohci 0000:01:03.0: AT spd 0 tl 37, ffc1 -> ffc0, ack_pending , QR req, fffff000047c
[  231.556557] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.556563] firewire_ohci 0000:01:03.0: AR spd 0 tl 37, ffc0 -> ffc1, ack_complete, QR resp = 035809f1
[  231.556584] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.556589] firewire_ohci 0000:01:03.0: AT spd 0 tl 38, ffc1 -> ffc0, ack_pending , QR req, fffff0000438
[  231.557564] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.557570] firewire_ohci 0000:01:03.0: AR spd 0 tl 38, ffc0 -> ffc1, ack_complete, QR resp = 00043327
[  231.557590] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.557595] firewire_ohci 0000:01:03.0: AT spd 0 tl 39, ffc1 -> ffc0, ack_pending , QR req, fffff000043c
[  231.558572] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.558578] firewire_ohci 0000:01:03.0: AR spd 0 tl 39, ffc0 -> ffc1, ack_complete, QR resp = 1200a02d
[  231.558598] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.558602] firewire_ohci 0000:01:03.0: AT spd 0 tl 3a, ffc1 -> ffc0, ack_pending , QR req, fffff0000440
[  231.559554] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.559560] firewire_ohci 0000:01:03.0: AR spd 0 tl 3a, ffc0 -> ffc1, ack_complete, QR resp = 13010001
[  231.559580] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.559585] firewire_ohci 0000:01:03.0: AT spd 0 tl 3b, ffc1 -> ffc0, ack_pending , QR req, fffff0000444
[  231.560549] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.560555] firewire_ohci 0000:01:03.0: AR spd 0 tl 3b, ffc0 -> ffc1, ack_complete, QR resp = 1701006b
[  231.560575] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.560580] firewire_ohci 0000:01:03.0: AT spd 0 tl 3c, ffc1 -> ffc0, ack_pending , QR req, fffff0000448
[  231.561564] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.561570] firewire_ohci 0000:01:03.0: AR spd 0 tl 3c, ffc0 -> ffc1, ack_complete, QR resp = 8100000e
[  231.561590] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.561595] firewire_ohci 0000:01:03.0: AT spd 0 tl 3d, ffc1 -> ffc0, ack_pending , QR req, fffff0000480
[  231.562623] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.562629] firewire_ohci 0000:01:03.0: AR spd 0 tl 3d, ffc0 -> ffc1, ack_complete, QR resp = 0006c2ad
[  231.562649] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.562653] firewire_ohci 0000:01:03.0: AT spd 0 tl 3e, ffc1 -> ffc0, ack_pending , QR req, fffff0000484
[  231.563570] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.563576] firewire_ohci 0000:01:03.0: AR spd 0 tl 3e, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  231.563597] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.563601] firewire_ohci 0000:01:03.0: AT spd 0 tl 3f, ffc1 -> ffc0, ack_pending , QR req, fffff0000488
[  231.564570] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.564576] firewire_ohci 0000:01:03.0: AR spd 0 tl 3f, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  231.564596] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.564601] firewire_ohci 0000:01:03.0: AT spd 0 tl 00, ffc1 -> ffc0, ack_pending , QR req, fffff000048c
[  231.565563] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.565569] firewire_ohci 0000:01:03.0: AR spd 0 tl 00, ffc0 -> ffc1, ack_complete, QR resp = 47522d44
[  231.565588] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.565593] firewire_ohci 0000:01:03.0: AT spd 0 tl 01, ffc1 -> ffc0, ack_pending , QR req, fffff0000490
[  231.566549] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.566555] firewire_ohci 0000:01:03.0: AR spd 0 tl 01, ffc0 -> ffc1, ack_complete, QR resp = 32300000
[  231.566578] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.566583] firewire_ohci 0000:01:03.0: AT spd 0 tl 02, ffc1 -> ffc0, ack_pending , QR req, fffff0000494
[  231.567615] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.567621] firewire_ohci 0000:01:03.0: AR spd 0 tl 02, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  231.567643] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.567648] firewire_ohci 0000:01:03.0: AT spd 0 tl 03, ffc1 -> ffc0, ack_pending , QR req, fffff0000498
[  231.568686] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.568692] firewire_ohci 0000:01:03.0: AR spd 0 tl 03, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  231.568712] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.568717] firewire_ohci 0000:01:03.0: AT spd 0 tl 04, ffc1 -> ffc0, ack_pending , QR req, fffff0000458
[  231.569631] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.569637] firewire_ohci 0000:01:03.0: AR spd 0 tl 04, ffc0 -> ffc1, ack_complete, QR resp = 0006c930
[  231.569656] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.569661] firewire_ohci 0000:01:03.0: AT spd 0 tl 05, ffc1 -> ffc0, ack_pending , QR req, fffff000045c
[  231.570588] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.570594] firewire_ohci 0000:01:03.0: AR spd 0 tl 05, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  231.570615] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.570619] firewire_ohci 0000:01:03.0: AT spd 0 tl 06, ffc1 -> ffc0, ack_pending , QR req, fffff0000460
[  231.571548] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.571554] firewire_ohci 0000:01:03.0: AR spd 0 tl 06, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  231.571575] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.571580] firewire_ohci 0000:01:03.0: AT spd 0 tl 07, ffc1 -> ffc0, ack_pending , QR req, fffff0000464
[  231.572561] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.572568] firewire_ohci 0000:01:03.0: AR spd 0 tl 07, ffc0 -> ffc1, ack_complete, QR resp = 4a564300
[  231.572588] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.572593] firewire_ohci 0000:01:03.0: AT spd 0 tl 08, ffc1 -> ffc0, ack_pending , QR req, fffff0000468
[  231.573553] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.573559] firewire_ohci 0000:01:03.0: AR spd 0 tl 08, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  231.573579] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.573584] firewire_ohci 0000:01:03.0: AT spd 0 tl 09, ffc1 -> ffc0, ack_pending , QR req, fffff000046c
[  231.574558] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.574564] firewire_ohci 0000:01:03.0: AR spd 0 tl 09, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  231.574585] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  231.574590] firewire_ohci 0000:01:03.0: AT spd 0 tl 0a, ffc1 -> ffc0, ack_pending , QR req, fffff0000470
[  231.575785] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  231.575791] firewire_ohci 0000:01:03.0: AR spd 0 tl 0a, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  231.575932] firewire_core 0000:01:03.0: created device fw1: GUID 00808801035809f1, S100
[  233.023970] firewire_core 0000:01:03.0: giving up on node ffc0: reading config rom failed: timeout

And as a point of reference, this is from 2.6:

[  128.943366] firewire_ohci: AR evt_bus_reset, generation 9
[  128.943541] firewire_ohci: IRQ 00010000 selfID
[  128.943551] firewire_ohci: 2 selfIDs, generation 9, local node ID ffc1
[  128.943554] firewire_ohci: selfID 0: 807f0880, phy 0 [p..] S100 gc=63 +0W Lc
[  128.943556] firewire_ohci: selfID 0: 817f8cd2, phy 1 [c-.] S400 gc=63 -3W Lci
[  128.943575] firewire_core: phy config: card 0, new root=ffc1, gap_count=5
[  128.943588] firewire_ohci: IRQ 00000001 AT_req
[  128.943592] firewire_ohci: AT ack_complete, phy config packet, 01c50000
[  128.960017] firewire_ohci: IRQ 00000010 AR_req
[  128.960021] firewire_ohci: AR evt_bus_reset, generation 10
[  128.960022] firewire_ohci: AR evt_bus_reset, generation 10
[  128.960190] firewire_ohci: IRQ 00010000 selfID
[  128.960200] firewire_ohci: 2 selfIDs, generation 11, local node ID ffc1
[  128.960202] firewire_ohci: selfID 0: 80450880, phy 0 [p..] S100 gc=5 +0W Lc
[  128.960204] firewire_ohci: selfID 0: 81458cd2, phy 1 [c-.] S400 gc=5 -3W Lci
[  128.960206] firewire_core: skipped bus generations, destroying all nodes
[  129.342084] firewire_ohci: IRQ 00000010 AR_req
[  129.342088] firewire_ohci: AR evt_bus_reset, generation 12
[  129.342265] firewire_ohci: IRQ 00010000 selfID
[  129.342274] firewire_ohci: 2 selfIDs, generation 12, local node ID ffc1
[  129.342277] firewire_ohci: selfID 0: 807f0882, phy 0 [p..] S100 gc=63 +0W Lci
[  129.342279] firewire_ohci: selfID 0: 817f8cd0, phy 1 [c-.] S400 gc=63 -3W Lc
[  129.442515] firewire_core: giving up on config rom for node id ffc0
[  129.462297] firewire_core: rediscovered device fw0
[  129.462319] firewire_ohci: IRQ 00000001 AT_req
[  129.462325] firewire_ohci: AT spd 0 tl 26, ffc1 -> ffc0, ack_pending , QR req, fffff0000400
[  129.462731] firewire_ohci: IRQ 00000020 AR_resp
[  129.462736] firewire_ohci: AR spd 0 tl 26, ffc0 -> ffc1, ack_complete, QR resp = 0426907c
[  129.462757] firewire_ohci: IRQ 00000001 AT_req
[  129.462762] firewire_ohci: AT spd 0 tl 27, ffc1 -> ffc0, ack_pending , QR req, fffff0000404
[  129.463723] firewire_ohci: IRQ 00000020 AR_resp
[  129.463727] firewire_ohci: AR spd 0 tl 27, ffc0 -> ffc1, ack_complete, QR resp = 31333934
[  129.463749] firewire_ohci: IRQ 00000001 AT_req
[  129.463753] firewire_ohci: AT spd 0 tl 28, ffc1 -> ffc0, ack_pending , QR req, fffff0000408
[  129.464739] firewire_ohci: IRQ 00000020 AR_resp
[  129.464744] firewire_ohci: AR spd 0 tl 28, ffc0 -> ffc1, ack_complete, QR resp = e0644000
[  129.464766] firewire_ohci: IRQ 00000001 AT_req
[  129.464771] firewire_ohci: AT spd 0 tl 29, ffc1 -> ffc0, ack_pending , QR req, fffff000040c
[  129.465781] firewire_ohci: IRQ 00000020 AR_resp
[  129.465785] firewire_ohci: AR spd 0 tl 29, ffc0 -> ffc1, ack_complete, QR resp = 00808801
[  129.465807] firewire_ohci: IRQ 00000001 AT_req
[  129.465812] firewire_ohci: AT spd 0 tl 2a, ffc1 -> ffc0, ack_pending , QR req, fffff0000410
[  129.466738] firewire_ohci: IRQ 00000020 AR_resp
[  129.466742] firewire_ohci: AR spd 0 tl 2a, ffc0 -> ffc1, ack_complete, QR resp = 035809f1
[  129.466764] firewire_ohci: IRQ 00000001 AT_req
[  129.466769] firewire_ohci: AT spd 0 tl 2b, ffc1 -> ffc0, ack_pending , QR req, fffff0000414
[  129.467843] firewire_ohci: IRQ 00000020 AR_resp
[  129.467847] firewire_ohci: AR spd 0 tl 2b, ffc0 -> ffc1, ack_complete, QR resp = 0008c442
[  129.467869] firewire_ohci: IRQ 00000001 AT_req
[  129.467873] firewire_ohci: AT spd 0 tl 2c, ffc1 -> ffc0, ack_pending , QR req, fffff0000418
[  129.468749] firewire_ohci: IRQ 00000020 AR_resp
[  129.468753] firewire_ohci: AR spd 0 tl 2c, ffc0 -> ffc1, ack_complete, QR resp = 03008088
[  129.468775] firewire_ohci: IRQ 00000001 AT_req
[  129.468779] firewire_ohci: AT spd 0 tl 2d, ffc1 -> ffc0, ack_pending , QR req, fffff000041c
[  129.469742] firewire_ohci: IRQ 00000020 AR_resp
[  129.469746] firewire_ohci: AR spd 0 tl 2d, ffc0 -> ffc1, ack_complete, QR resp = 8100000f
[  129.469768] firewire_ohci: IRQ 00000001 AT_req
[  129.469772] firewire_ohci: AT spd 0 tl 2e, ffc1 -> ffc0, ack_pending , QR req, fffff0000420
[  129.470745] firewire_ohci: IRQ 00000020 AR_resp
[  129.470750] firewire_ohci: AR spd 0 tl 2e, ffc0 -> ffc1, ack_complete, QR resp = 0c0083c0
[  129.470791] firewire_ohci: IRQ 00000001 AT_req
[  129.470795] firewire_ohci: AT spd 0 tl 2f, ffc1 -> ffc0, ack_pending , QR req, fffff0000424
[  129.471758] firewire_ohci: IRQ 00000020 AR_resp
[  129.471762] firewire_ohci: AR spd 0 tl 2f, ffc0 -> ffc1, ack_complete, QR resp = d1000005
[  129.471784] firewire_ohci: IRQ 00000001 AT_req
[  129.471788] firewire_ohci: AT spd 0 tl 30, ffc1 -> ffc0, ack_pending , QR req, fffff0000428
[  129.472716] firewire_ohci: IRQ 00000020 AR_resp
[  129.472721] firewire_ohci: AR spd 0 tl 30, ffc0 -> ffc1, ack_complete, QR resp = 8d000013
[  129.472742] firewire_ohci: IRQ 00000001 AT_req
[  129.472747] firewire_ohci: AT spd 0 tl 31, ffc1 -> ffc0, ack_pending , QR req, fffff000042c
[  129.473832] firewire_ohci: IRQ 00000020 AR_resp
[  129.473837] firewire_ohci: AR spd 0 tl 31, ffc0 -> ffc1, ack_complete, QR resp = c3000008
[  129.473858] firewire_ohci: IRQ 00000001 AT_req
[  129.473863] firewire_ohci: AT spd 0 tl 32, ffc1 -> ffc0, ack_pending , QR req, fffff0000430
[  129.474717] firewire_ohci: IRQ 00000020 AR_resp
[  129.474722] firewire_ohci: AR spd 0 tl 32, ffc0 -> ffc1, ack_complete, QR resp = 1701006b
[  129.474743] firewire_ohci: IRQ 00000001 AT_req
[  129.474748] firewire_ohci: AT spd 0 tl 33, ffc1 -> ffc0, ack_pending , QR req, fffff0000434
[  129.475761] firewire_ohci: IRQ 00000020 AR_resp
[  129.475765] firewire_ohci: AR spd 0 tl 33, ffc0 -> ffc1, ack_complete, QR resp = 81000013
[  129.475787] firewire_ohci: IRQ 00000001 AT_req
[  129.475791] firewire_ohci: AT spd 0 tl 34, ffc1 -> ffc0, ack_pending , QR req, fffff0000480
[  129.476766] firewire_ohci: IRQ 00000020 AR_resp
[  129.476770] firewire_ohci: AR spd 0 tl 34, ffc0 -> ffc1, ack_complete, QR resp = 0006c2ad
[  129.476792] firewire_ohci: IRQ 00000001 AT_req
[  129.476796] firewire_ohci: AT spd 0 tl 35, ffc1 -> ffc0, ack_pending , QR req, fffff0000484
[  129.477734] firewire_ohci: IRQ 00000020 AR_resp
[  129.477738] firewire_ohci: AR spd 0 tl 35, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  129.477760] firewire_ohci: IRQ 00000001 AT_req
[  129.477764] firewire_ohci: AT spd 0 tl 36, ffc1 -> ffc0, ack_pending , QR req, fffff0000488
[  129.478743] firewire_ohci: IRQ 00000020 AR_resp
[  129.478747] firewire_ohci: AR spd 0 tl 36, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  129.478768] firewire_ohci: IRQ 00000001 AT_req
[  129.478773] firewire_ohci: AT spd 0 tl 37, ffc1 -> ffc0, ack_pending , QR req, fffff000048c
[  129.479740] firewire_ohci: IRQ 00000020 AR_resp
[  129.479744] firewire_ohci: AR spd 0 tl 37, ffc0 -> ffc1, ack_complete, QR resp = 47522d44
[  129.479766] firewire_ohci: IRQ 00000001 AT_req
[  129.479770] firewire_ohci: AT spd 0 tl 38, ffc1 -> ffc0, ack_pending , QR req, fffff0000490
[  129.480751] firewire_ohci: IRQ 00000020 AR_resp
[  129.480755] firewire_ohci: AR spd 0 tl 38, ffc0 -> ffc1, ack_complete, QR resp = 32300000
[  129.480785] firewire_ohci: IRQ 00000001 AT_req
[  129.480790] firewire_ohci: AT spd 0 tl 39, ffc1 -> ffc0, ack_pending , QR req, fffff0000494
[  129.481754] firewire_ohci: IRQ 00000020 AR_resp
[  129.481758] firewire_ohci: AR spd 0 tl 39, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  129.481780] firewire_ohci: IRQ 00000001 AT_req
[  129.481784] firewire_ohci: AT spd 0 tl 3a, ffc1 -> ffc0, ack_pending , QR req, fffff0000498
[  129.482747] firewire_ohci: IRQ 00000020 AR_resp
[  129.482751] firewire_ohci: AR spd 0 tl 3a, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  129.482773] firewire_ohci: IRQ 00000001 AT_req
[  129.482777] firewire_ohci: AT spd 0 tl 3b, ffc1 -> ffc0, ack_pending , QR req, fffff000044c
[  129.483737] firewire_ohci: IRQ 00000020 AR_resp
[  129.483741] firewire_ohci: AR spd 0 tl 3b, ffc0 -> ffc1, ack_complete, QR resp = 0002ad09
[  129.483763] firewire_ohci: IRQ 00000001 AT_req
[  129.483767] firewire_ohci: AT spd 0 tl 3c, ffc1 -> ffc0, ack_pending , QR req, fffff0000450
[  129.484728] firewire_ohci: IRQ 00000020 AR_resp
[  129.484732] firewire_ohci: AR spd 0 tl 3c, ffc0 -> ffc1, ack_complete, QR resp = 1701006b
[  129.484754] firewire_ohci: IRQ 00000001 AT_req
[  129.484758] firewire_ohci: AT spd 0 tl 3d, ffc1 -> ffc0, ack_pending , QR req, fffff0000454
[  129.485863] firewire_ohci: IRQ 00000020 AR_resp
[  129.485868] firewire_ohci: AR spd 0 tl 3d, ffc0 -> ffc1, ack_complete, QR resp = 8100000b
[  129.485889] firewire_ohci: IRQ 00000001 AT_req
[  129.485894] firewire_ohci: AT spd 0 tl 3e, ffc1 -> ffc0, ack_pending , QR req, fffff0000480
[  129.486900] firewire_ohci: IRQ 00000020 AR_resp
[  129.486904] firewire_ohci: AR spd 0 tl 3e, ffc0 -> ffc1, ack_complete, QR resp = 0006c2ad
[  129.486926] firewire_ohci: IRQ 00000001 AT_req
[  129.486930] firewire_ohci: AT spd 0 tl 3f, ffc1 -> ffc0, ack_pending , QR req, fffff0000484
[  129.487790] firewire_ohci: IRQ 00000020 AR_resp
[  129.487794] firewire_ohci: AR spd 0 tl 3f, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  129.487832] firewire_ohci: IRQ 00000001 AT_req
[  129.487836] firewire_ohci: AT spd 0 tl 00, ffc1 -> ffc0, ack_pending , QR req, fffff0000488
[  129.488748] firewire_ohci: IRQ 00000020 AR_resp
[  129.488752] firewire_ohci: AR spd 0 tl 00, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  129.488774] firewire_ohci: IRQ 00000001 AT_req
[  129.488779] firewire_ohci: AT spd 0 tl 01, ffc1 -> ffc0, ack_pending , QR req, fffff000048c
[  129.489737] firewire_ohci: IRQ 00000020 AR_resp
[  129.489742] firewire_ohci: AR spd 0 tl 01, ffc0 -> ffc1, ack_complete, QR resp = 47522d44
[  129.489763] firewire_ohci: IRQ 00000001 AT_req
[  129.489768] firewire_ohci: AT spd 0 tl 02, ffc1 -> ffc0, ack_pending , QR req, fffff0000490
[  129.490739] firewire_ohci: IRQ 00000020 AR_resp
[  129.490744] firewire_ohci: AR spd 0 tl 02, ffc0 -> ffc1, ack_complete, QR resp = 32300000
[  129.490765] firewire_ohci: IRQ 00000001 AT_req
[  129.490770] firewire_ohci: AT spd 0 tl 03, ffc1 -> ffc0, ack_pending , QR req, fffff0000494
[  129.491733] firewire_ohci: IRQ 00000020 AR_resp
[  129.491738] firewire_ohci: AR spd 0 tl 03, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  129.491759] firewire_ohci: IRQ 00000001 AT_req
[  129.491764] firewire_ohci: AT spd 0 tl 04, ffc1 -> ffc0, ack_pending , QR req, fffff0000498
[  129.492750] firewire_ohci: IRQ 00000020 AR_resp
[  129.492754] firewire_ohci: AR spd 0 tl 04, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  129.492776] firewire_ohci: IRQ 00000001 AT_req
[  129.492780] firewire_ohci: AT spd 0 tl 05, ffc1 -> ffc0, ack_pending , QR req, fffff0000474
[  129.493830] firewire_ohci: IRQ 00000020 AR_resp
[  129.493834] firewire_ohci: AR spd 0 tl 05, ffc0 -> ffc1, ack_complete, QR resp = 0002f1df
[  129.493856] firewire_ohci: IRQ 00000001 AT_req
[  129.493861] firewire_ohci: AT spd 0 tl 06, ffc1 -> ffc0, ack_pending , QR req, fffff0000478
[  129.494725] firewire_ohci: IRQ 00000020 AR_resp
[  129.494729] firewire_ohci: AR spd 0 tl 06, ffc0 -> ffc1, ack_complete, QR resp = 00808801
[  129.494752] firewire_ohci: IRQ 00000001 AT_req
[  129.494756] firewire_ohci: AT spd 0 tl 07, ffc1 -> ffc0, ack_pending , QR req, fffff000047c
[  129.495769] firewire_ohci: IRQ 00000020 AR_resp
[  129.495774] firewire_ohci: AR spd 0 tl 07, ffc0 -> ffc1, ack_complete, QR resp = 035809f1
[  129.495796] firewire_ohci: IRQ 00000001 AT_req
[  129.495800] firewire_ohci: AT spd 0 tl 08, ffc1 -> ffc0, ack_pending , QR req, fffff0000438
[  129.496743] firewire_ohci: IRQ 00000020 AR_resp
[  129.496747] firewire_ohci: AR spd 0 tl 08, ffc0 -> ffc1, ack_complete, QR resp = 00043327
[  129.496769] firewire_ohci: IRQ 00000001 AT_req
[  129.496773] firewire_ohci: AT spd 0 tl 09, ffc1 -> ffc0, ack_pending , QR req, fffff000043c
[  129.497733] firewire_ohci: IRQ 00000020 AR_resp
[  129.497737] firewire_ohci: AR spd 0 tl 09, ffc0 -> ffc1, ack_complete, QR resp = 1200a02d
[  129.497759] firewire_ohci: IRQ 00000001 AT_req
[  129.497763] firewire_ohci: AT spd 0 tl 0a, ffc1 -> ffc0, ack_pending , QR req, fffff0000440
[  129.498748] firewire_ohci: IRQ 00000020 AR_resp
[  129.498753] firewire_ohci: AR spd 0 tl 0a, ffc0 -> ffc1, ack_complete, QR resp = 13010001
[  129.498774] firewire_ohci: IRQ 00000001 AT_req
[  129.498779] firewire_ohci: AT spd 0 tl 0b, ffc1 -> ffc0, ack_pending , QR req, fffff0000444
[  129.499735] firewire_ohci: IRQ 00000020 AR_resp
[  129.499739] firewire_ohci: AR spd 0 tl 0b, ffc0 -> ffc1, ack_complete, QR resp = 1701006b
[  129.499761] firewire_ohci: IRQ 00000001 AT_req
[  129.499765] firewire_ohci: AT spd 0 tl 0c, ffc1 -> ffc0, ack_pending , QR req, fffff0000448
[  129.500743] firewire_ohci: IRQ 00000020 AR_resp
[  129.500748] firewire_ohci: AR spd 0 tl 0c, ffc0 -> ffc1, ack_complete, QR resp = 8100000e
[  129.500769] firewire_ohci: IRQ 00000001 AT_req
[  129.500774] firewire_ohci: AT spd 0 tl 0d, ffc1 -> ffc0, ack_pending , QR req, fffff0000480
[  129.501749] firewire_ohci: IRQ 00000020 AR_resp
[  129.501753] firewire_ohci: AR spd 0 tl 0d, ffc0 -> ffc1, ack_complete, QR resp = 0006c2ad
[  129.501775] firewire_ohci: IRQ 00000001 AT_req
[  129.501779] firewire_ohci: AT spd 0 tl 0e, ffc1 -> ffc0, ack_pending , QR req, fffff0000484
[  129.502740] firewire_ohci: IRQ 00000020 AR_resp
[  129.502744] firewire_ohci: AR spd 0 tl 0e, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  129.502766] firewire_ohci: IRQ 00000001 AT_req
[  129.502771] firewire_ohci: AT spd 0 tl 0f, ffc1 -> ffc0, ack_pending , QR req, fffff0000488
[  129.503731] firewire_ohci: IRQ 00000020 AR_resp
[  129.503735] firewire_ohci: AR spd 0 tl 0f, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  129.503757] firewire_ohci: IRQ 00000001 AT_req
[  129.503762] firewire_ohci: AT spd 0 tl 10, ffc1 -> ffc0, ack_pending , QR req, fffff000048c
[  129.504753] firewire_ohci: IRQ 00000020 AR_resp
[  129.504758] firewire_ohci: AR spd 0 tl 10, ffc0 -> ffc1, ack_complete, QR resp = 47522d44
[  129.504779] firewire_ohci: IRQ 00000001 AT_req
[  129.504784] firewire_ohci: AT spd 0 tl 11, ffc1 -> ffc0, ack_pending , QR req, fffff0000490
[  129.505782] firewire_ohci: IRQ 00000020 AR_resp
[  129.505786] firewire_ohci: AR spd 0 tl 11, ffc0 -> ffc1, ack_complete, QR resp = 32300000
[  129.505808] firewire_ohci: IRQ 00000001 AT_req
[  129.505813] firewire_ohci: AT spd 0 tl 12, ffc1 -> ffc0, ack_pending , QR req, fffff0000494
[  129.506845] firewire_ohci: IRQ 00000020 AR_resp
[  129.506849] firewire_ohci: AR spd 0 tl 12, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  129.506871] firewire_ohci: IRQ 00000001 AT_req
[  129.506876] firewire_ohci: AT spd 0 tl 13, ffc1 -> ffc0, ack_pending , QR req, fffff0000498
[  129.507766] firewire_ohci: IRQ 00000020 AR_resp
[  129.507771] firewire_ohci: AR spd 0 tl 13, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  129.507792] firewire_ohci: IRQ 00000001 AT_req
[  129.507797] firewire_ohci: AT spd 0 tl 14, ffc1 -> ffc0, ack_pending , QR req, fffff0000458
[  129.508761] firewire_ohci: IRQ 00000020 AR_resp
[  129.508765] firewire_ohci: AR spd 0 tl 14, ffc0 -> ffc1, ack_complete, QR resp = 0006c930
[  129.508787] firewire_ohci: IRQ 00000001 AT_req
[  129.508791] firewire_ohci: AT spd 0 tl 15, ffc1 -> ffc0, ack_pending , QR req, fffff000045c
[  129.509736] firewire_ohci: IRQ 00000020 AR_resp
[  129.509741] firewire_ohci: AR spd 0 tl 15, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  129.509762] firewire_ohci: IRQ 00000001 AT_req
[  129.509767] firewire_ohci: AT spd 0 tl 16, ffc1 -> ffc0, ack_pending , QR req, fffff0000460
[  129.510768] firewire_ohci: IRQ 00000020 AR_resp
[  129.510773] firewire_ohci: AR spd 0 tl 16, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  129.510793] firewire_ohci: IRQ 00000001 AT_req
[  129.510798] firewire_ohci: AT spd 0 tl 17, ffc1 -> ffc0, ack_pending , QR req, fffff0000464
[  129.511753] firewire_ohci: IRQ 00000020 AR_resp
[  129.511758] firewire_ohci: AR spd 0 tl 17, ffc0 -> ffc1, ack_complete, QR resp = 4a564300
[  129.511780] firewire_ohci: IRQ 00000001 AT_req
[  129.511784] firewire_ohci: AT spd 0 tl 18, ffc1 -> ffc0, ack_pending , QR req, fffff0000468
[  129.512735] firewire_ohci: IRQ 00000020 AR_resp
[  129.512739] firewire_ohci: AR spd 0 tl 18, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  129.512761] firewire_ohci: IRQ 00000001 AT_req
[  129.512765] firewire_ohci: AT spd 0 tl 19, ffc1 -> ffc0, ack_pending , QR req, fffff000046c
[  129.513803] firewire_ohci: IRQ 00000020 AR_resp
[  129.513807] firewire_ohci: AR spd 0 tl 19, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  129.513845] firewire_ohci: IRQ 00000001 AT_req
[  129.513849] firewire_ohci: AT spd 0 tl 1a, ffc1 -> ffc0, ack_pending , QR req, fffff0000470
[  129.514747] firewire_ohci: IRQ 00000020 AR_resp
[  129.514752] firewire_ohci: AR spd 0 tl 1a, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  129.514842] firewire_core: created device fw1: GUID 00808801035809f1, S100
[  129.514846] firewire_core: phy config: card 0, new root=ffc1, gap_count=5
[  129.514858] firewire_ohci: IRQ 00000001 AT_req
[  129.514862] firewire_ohci: AT ack_complete, phy config packet, 01c50000
[  129.532516] firewire_ohci: IRQ 00000010 AR_req
[  129.532520] firewire_ohci: AR evt_bus_reset, generation 13
[  129.532522] firewire_ohci: AR evt_bus_reset, generation 13
[  129.532690] firewire_ohci: IRQ 00010000 selfID
[  129.532700] firewire_ohci: 2 selfIDs, generation 14, local node ID ffc1
[  129.532702] firewire_ohci: selfID 0: 80450880, phy 0 [p..] S100 gc=5 +0W Lc
[  129.532705] firewire_ohci: selfID 0: 81458cd2, phy 1 [c-.] S400 gc=5 -3W Lci
[  129.532706] firewire_core: skipped bus generations, destroying all nodes
[  130.040021] firewire_core: rediscovered device fw0
[  130.040037] firewire_ohci: IRQ 00000001 AT_req
[  130.040042] firewire_ohci: AT spd 0 tl 32, ffc1 -> ffc0, ack_pending , QR req, fffff0000400
[  130.040966] firewire_ohci: IRQ 00000020 AR_resp
[  130.040970] firewire_ohci: AR spd 0 tl 32, ffc0 -> ffc1, ack_complete, QR resp = 0426907c
[  130.040985] firewire_ohci: IRQ 00000001 AT_req
[  130.040990] firewire_ohci: AT spd 0 tl 33, ffc1 -> ffc0, ack_pending , QR req, fffff0000404
[  130.041979] firewire_ohci: IRQ 00000020 AR_resp
[  130.041984] firewire_ohci: AR spd 0 tl 33, ffc0 -> ffc1, ack_complete, QR resp = 31333934
[  130.041998] firewire_ohci: IRQ 00000001 AT_req
[  130.042003] firewire_ohci: AT spd 0 tl 34, ffc1 -> ffc0, ack_pending , QR req, fffff0000408
[  130.042956] firewire_ohci: IRQ 00000020 AR_resp
[  130.042960] firewire_ohci: AR spd 0 tl 34, ffc0 -> ffc1, ack_complete, QR resp = e0644000
[  130.042975] firewire_ohci: IRQ 00000001 AT_req
[  130.042979] firewire_ohci: AT spd 0 tl 35, ffc1 -> ffc0, ack_pending , QR req, fffff000040c
[  130.043971] firewire_ohci: IRQ 00000020 AR_resp
[  130.043975] firewire_ohci: AR spd 0 tl 35, ffc0 -> ffc1, ack_complete, QR resp = 00808801
[  130.043990] firewire_ohci: IRQ 00000001 AT_req
[  130.043994] firewire_ohci: AT spd 0 tl 36, ffc1 -> ffc0, ack_pending , QR req, fffff0000410
[  130.044979] firewire_ohci: IRQ 00000020 AR_resp
[  130.044983] firewire_ohci: AR spd 0 tl 36, ffc0 -> ffc1, ack_complete, QR resp = 035809f1
[  130.044998] firewire_ohci: IRQ 00000001 AT_req
[  130.045002] firewire_ohci: AT spd 0 tl 37, ffc1 -> ffc0, ack_pending , QR req, fffff0000414
[  130.046160] firewire_ohci: IRQ 00000020 AR_resp
[  130.046164] firewire_ohci: AR spd 0 tl 37, ffc0 -> ffc1, ack_complete, QR resp = 0008c442
[  130.046179] firewire_ohci: IRQ 00000001 AT_req
[  130.046183] firewire_ohci: AT spd 0 tl 38, ffc1 -> ffc0, ack_pending , QR req, fffff0000418
[  130.047050] firewire_ohci: IRQ 00000020 AR_resp
[  130.047054] firewire_ohci: AR spd 0 tl 38, ffc0 -> ffc1, ack_complete, QR resp = 03008088
[  130.047069] firewire_ohci: IRQ 00000001 AT_req
[  130.047073] firewire_ohci: AT spd 0 tl 39, ffc1 -> ffc0, ack_pending , QR req, fffff000041c
[  130.048110] firewire_ohci: IRQ 00000020 AR_resp
[  130.048114] firewire_ohci: AR spd 0 tl 39, ffc0 -> ffc1, ack_complete, QR resp = 8100000f
[  130.048129] firewire_ohci: IRQ 00000001 AT_req
[  130.048133] firewire_ohci: AT spd 0 tl 3a, ffc1 -> ffc0, ack_pending , QR req, fffff0000420
[  130.049012] firewire_ohci: IRQ 00000020 AR_resp
[  130.049016] firewire_ohci: AR spd 0 tl 3a, ffc0 -> ffc1, ack_complete, QR resp = 0c0083c0
[  130.049031] firewire_ohci: IRQ 00000001 AT_req
[  130.049035] firewire_ohci: AT spd 0 tl 3b, ffc1 -> ffc0, ack_pending , QR req, fffff0000424
[  130.049958] firewire_ohci: IRQ 00000020 AR_resp
[  130.049962] firewire_ohci: AR spd 0 tl 3b, ffc0 -> ffc1, ack_complete, QR resp = d1000005
[  130.049977] firewire_ohci: IRQ 00000001 AT_req
[  130.049981] firewire_ohci: AT spd 0 tl 3c, ffc1 -> ffc0, ack_pending , QR req, fffff0000428
[  130.050990] firewire_ohci: IRQ 00000020 AR_resp
[  130.050995] firewire_ohci: AR spd 0 tl 3c, ffc0 -> ffc1, ack_complete, QR resp = 8d000013
[  130.051013] firewire_ohci: IRQ 00000001 AT_req
[  130.051017] firewire_ohci: AT spd 0 tl 3d, ffc1 -> ffc0, ack_pending , QR req, fffff000042c
[  130.051995] firewire_ohci: IRQ 00000020 AR_resp
[  130.051999] firewire_ohci: AR spd 0 tl 3d, ffc0 -> ffc1, ack_complete, QR resp = c3000008
[  130.052014] firewire_ohci: IRQ 00000001 AT_req
[  130.052019] firewire_ohci: AT spd 0 tl 3e, ffc1 -> ffc0, ack_pending , QR req, fffff0000430
[  130.052960] firewire_ohci: IRQ 00000020 AR_resp
[  130.052965] firewire_ohci: AR spd 0 tl 3e, ffc0 -> ffc1, ack_complete, QR resp = 1701006b
[  130.052979] firewire_ohci: IRQ 00000001 AT_req
[  130.052984] firewire_ohci: AT spd 0 tl 3f, ffc1 -> ffc0, ack_pending , QR req, fffff0000434
[  130.053964] firewire_ohci: IRQ 00000020 AR_resp
[  130.053968] firewire_ohci: AR spd 0 tl 3f, ffc0 -> ffc1, ack_complete, QR resp = 81000013
[  130.053983] firewire_ohci: IRQ 00000001 AT_req
[  130.053987] firewire_ohci: AT spd 0 tl 00, ffc1 -> ffc0, ack_pending , QR req, fffff0000480
[  130.054984] firewire_ohci: IRQ 00000020 AR_resp
[  130.054988] firewire_ohci: AR spd 0 tl 00, ffc0 -> ffc1, ack_complete, QR resp = 0006c2ad
[  130.055003] firewire_ohci: IRQ 00000001 AT_req
[  130.055007] firewire_ohci: AT spd 0 tl 01, ffc1 -> ffc0, ack_pending , QR req, fffff0000484
[  130.056008] firewire_ohci: IRQ 00000020 AR_resp
[  130.056012] firewire_ohci: AR spd 0 tl 01, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  130.056027] firewire_ohci: IRQ 00000001 AT_req
[  130.056031] firewire_ohci: AT spd 0 tl 02, ffc1 -> ffc0, ack_pending , QR req, fffff0000488
[  130.056983] firewire_ohci: IRQ 00000020 AR_resp
[  130.056988] firewire_ohci: AR spd 0 tl 02, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  130.057002] firewire_ohci: IRQ 00000001 AT_req
[  130.057007] firewire_ohci: AT spd 0 tl 03, ffc1 -> ffc0, ack_pending , QR req, fffff000048c
[  130.058062] firewire_ohci: IRQ 00000020 AR_resp
[  130.058066] firewire_ohci: AR spd 0 tl 03, ffc0 -> ffc1, ack_complete, QR resp = 47522d44
[  130.058081] firewire_ohci: IRQ 00000001 AT_req
[  130.058085] firewire_ohci: AT spd 0 tl 04, ffc1 -> ffc0, ack_pending , QR req, fffff0000490
[  130.059020] firewire_ohci: IRQ 00000020 AR_resp
[  130.059025] firewire_ohci: AR spd 0 tl 04, ffc0 -> ffc1, ack_complete, QR resp = 32300000
[  130.059039] firewire_ohci: IRQ 00000001 AT_req
[  130.059044] firewire_ohci: AT spd 0 tl 05, ffc1 -> ffc0, ack_pending , QR req, fffff0000494
[  130.059987] firewire_ohci: IRQ 00000020 AR_resp
[  130.059991] firewire_ohci: AR spd 0 tl 05, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  130.060008] firewire_ohci: IRQ 00000001 AT_req
[  130.060014] firewire_ohci: AT spd 0 tl 06, ffc1 -> ffc0, ack_pending , QR req, fffff0000498
[  130.060964] firewire_ohci: IRQ 00000020 AR_resp
[  130.060968] firewire_ohci: AR spd 0 tl 06, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  130.060984] firewire_ohci: IRQ 00000001 AT_req
[  130.060988] firewire_ohci: AT spd 0 tl 07, ffc1 -> ffc0, ack_pending , QR req, fffff000044c
[  130.061976] firewire_ohci: IRQ 00000020 AR_resp
[  130.061981] firewire_ohci: AR spd 0 tl 07, ffc0 -> ffc1, ack_complete, QR resp = 0002ad09
[  130.061995] firewire_ohci: IRQ 00000001 AT_req
[  130.062000] firewire_ohci: AT spd 0 tl 08, ffc1 -> ffc0, ack_pending , QR req, fffff0000450
[  130.062986] firewire_ohci: IRQ 00000020 AR_resp
[  130.062990] firewire_ohci: AR spd 0 tl 08, ffc0 -> ffc1, ack_complete, QR resp = 1701006b
[  130.063005] firewire_ohci: IRQ 00000001 AT_req
[  130.063009] firewire_ohci: AT spd 0 tl 09, ffc1 -> ffc0, ack_pending , QR req, fffff0000454
[  130.063985] firewire_ohci: IRQ 00000020 AR_resp
[  130.063990] firewire_ohci: AR spd 0 tl 09, ffc0 -> ffc1, ack_complete, QR resp = 8100000b
[  130.064003] firewire_ohci: IRQ 00000001 AT_req
[  130.064008] firewire_ohci: AT spd 0 tl 0a, ffc1 -> ffc0, ack_pending , QR req, fffff0000480
[  130.064979] firewire_ohci: IRQ 00000020 AR_resp
[  130.064983] firewire_ohci: AR spd 0 tl 0a, ffc0 -> ffc1, ack_complete, QR resp = 0006c2ad
[  130.064998] firewire_ohci: IRQ 00000001 AT_req
[  130.065002] firewire_ohci: AT spd 0 tl 0b, ffc1 -> ffc0, ack_pending , QR req, fffff0000484
[  130.066259] firewire_ohci: IRQ 00000020 AR_resp
[  130.066263] firewire_ohci: AR spd 0 tl 0b, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  130.066277] firewire_ohci: IRQ 00000001 AT_req
[  130.066282] firewire_ohci: AT spd 0 tl 0c, ffc1 -> ffc0, ack_pending , QR req, fffff0000488
[  130.066968] firewire_ohci: IRQ 00000020 AR_resp
[  130.066972] firewire_ohci: AR spd 0 tl 0c, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  130.066987] firewire_ohci: IRQ 00000001 AT_req
[  130.066991] firewire_ohci: AT spd 0 tl 0d, ffc1 -> ffc0, ack_pending , QR req, fffff000048c
[  130.068052] firewire_ohci: IRQ 00000020 AR_resp
[  130.068057] firewire_ohci: AR spd 0 tl 0d, ffc0 -> ffc1, ack_complete, QR resp = 47522d44
[  130.068071] firewire_ohci: IRQ 00000001 AT_req
[  130.068075] firewire_ohci: AT spd 0 tl 0e, ffc1 -> ffc0, ack_pending , QR req, fffff0000490
[  130.069041] firewire_ohci: IRQ 00000020 AR_resp
[  130.069045] firewire_ohci: AR spd 0 tl 0e, ffc0 -> ffc1, ack_complete, QR resp = 32300000
[  130.069060] firewire_ohci: IRQ 00000001 AT_req
[  130.069064] firewire_ohci: AT spd 0 tl 0f, ffc1 -> ffc0, ack_pending , QR req, fffff0000494
[  130.069991] firewire_ohci: IRQ 00000020 AR_resp
[  130.069995] firewire_ohci: AR spd 0 tl 0f, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  130.070009] firewire_ohci: IRQ 00000001 AT_req
[  130.070014] firewire_ohci: AT spd 0 tl 10, ffc1 -> ffc0, ack_pending , QR req, fffff0000498
[  130.070991] firewire_ohci: IRQ 00000020 AR_resp
[  130.070996] firewire_ohci: AR spd 0 tl 10, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  130.071011] firewire_ohci: IRQ 00000001 AT_req
[  130.071016] firewire_ohci: AT spd 0 tl 11, ffc1 -> ffc0, ack_pending , QR req, fffff0000474
[  130.071981] firewire_ohci: IRQ 00000020 AR_resp
[  130.071985] firewire_ohci: AR spd 0 tl 11, ffc0 -> ffc1, ack_complete, QR resp = 0002f1df
[  130.072000] firewire_ohci: IRQ 00000001 AT_req
[  130.072004] firewire_ohci: AT spd 0 tl 12, ffc1 -> ffc0, ack_pending , QR req, fffff0000478
[  130.072988] firewire_ohci: IRQ 00000020 AR_resp
[  130.072993] firewire_ohci: AR spd 0 tl 12, ffc0 -> ffc1, ack_complete, QR resp = 00808801
[  130.073007] firewire_ohci: IRQ 00000001 AT_req
[  130.073012] firewire_ohci: AT spd 0 tl 13, ffc1 -> ffc0, ack_pending , QR req, fffff000047c
[  130.073993] firewire_ohci: IRQ 00000020 AR_resp
[  130.073997] firewire_ohci: AR spd 0 tl 13, ffc0 -> ffc1, ack_complete, QR resp = 035809f1
[  130.074011] firewire_ohci: IRQ 00000001 AT_req
[  130.074015] firewire_ohci: AT spd 0 tl 14, ffc1 -> ffc0, ack_pending , QR req, fffff0000438
[  130.074974] firewire_ohci: IRQ 00000020 AR_resp
[  130.074978] firewire_ohci: AR spd 0 tl 14, ffc0 -> ffc1, ack_complete, QR resp = 00043327
[  130.074992] firewire_ohci: IRQ 00000001 AT_req
[  130.074997] firewire_ohci: AT spd 0 tl 15, ffc1 -> ffc0, ack_pending , QR req, fffff000043c
[  130.075977] firewire_ohci: IRQ 00000020 AR_resp
[  130.075981] firewire_ohci: AR spd 0 tl 15, ffc0 -> ffc1, ack_complete, QR resp = 1200a02d
[  130.075996] firewire_ohci: IRQ 00000001 AT_req
[  130.076001] firewire_ohci: AT spd 0 tl 16, ffc1 -> ffc0, ack_pending , QR req, fffff0000440
[  130.076975] firewire_ohci: IRQ 00000020 AR_resp
[  130.076980] firewire_ohci: AR spd 0 tl 16, ffc0 -> ffc1, ack_complete, QR resp = 13010001
[  130.076993] firewire_ohci: IRQ 00000001 AT_req
[  130.076998] firewire_ohci: AT spd 0 tl 17, ffc1 -> ffc0, ack_pending , QR req, fffff0000444
[  130.078054] firewire_ohci: IRQ 00000020 AR_resp
[  130.078058] firewire_ohci: AR spd 0 tl 17, ffc0 -> ffc1, ack_complete, QR resp = 1701006b
[  130.078073] firewire_ohci: IRQ 00000001 AT_req
[  130.078077] firewire_ohci: AT spd 0 tl 18, ffc1 -> ffc0, ack_pending , QR req, fffff0000448
[  130.079042] firewire_ohci: IRQ 00000020 AR_resp
[  130.079046] firewire_ohci: AR spd 0 tl 18, ffc0 -> ffc1, ack_complete, QR resp = 8100000e
[  130.079061] firewire_ohci: IRQ 00000001 AT_req
[  130.079065] firewire_ohci: AT spd 0 tl 19, ffc1 -> ffc0, ack_pending , QR req, fffff0000480
[  130.079988] firewire_ohci: IRQ 00000020 AR_resp
[  130.079992] firewire_ohci: AR spd 0 tl 19, ffc0 -> ffc1, ack_complete, QR resp = 0006c2ad
[  130.080008] firewire_ohci: IRQ 00000001 AT_req
[  130.080013] firewire_ohci: AT spd 0 tl 1a, ffc1 -> ffc0, ack_pending , QR req, fffff0000484
[  130.080993] firewire_ohci: IRQ 00000020 AR_resp
[  130.080998] firewire_ohci: AR spd 0 tl 1a, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  130.081013] firewire_ohci: IRQ 00000001 AT_req
[  130.081017] firewire_ohci: AT spd 0 tl 1b, ffc1 -> ffc0, ack_pending , QR req, fffff0000488
[  130.081978] firewire_ohci: IRQ 00000020 AR_resp
[  130.081982] firewire_ohci: AR spd 0 tl 1b, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  130.081997] firewire_ohci: IRQ 00000001 AT_req
[  130.082001] firewire_ohci: AT spd 0 tl 1c, ffc1 -> ffc0, ack_pending , QR req, fffff000048c
[  130.082983] firewire_ohci: IRQ 00000020 AR_resp
[  130.082987] firewire_ohci: AR spd 0 tl 1c, ffc0 -> ffc1, ack_complete, QR resp = 47522d44
[  130.083002] firewire_ohci: IRQ 00000001 AT_req
[  130.083006] firewire_ohci: AT spd 0 tl 1d, ffc1 -> ffc0, ack_pending , QR req, fffff0000490
[  130.083982] firewire_ohci: IRQ 00000020 AR_resp
[  130.083987] firewire_ohci: AR spd 0 tl 1d, ffc0 -> ffc1, ack_complete, QR resp = 32300000
[  130.084002] firewire_ohci: IRQ 00000001 AT_req
[  130.084006] firewire_ohci: AT spd 0 tl 1e, ffc1 -> ffc0, ack_pending , QR req, fffff0000494
[  130.084979] firewire_ohci: IRQ 00000020 AR_resp
[  130.084984] firewire_ohci: AR spd 0 tl 1e, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  130.085001] firewire_ohci: IRQ 00000001 AT_req
[  130.085006] firewire_ohci: AT spd 0 tl 1f, ffc1 -> ffc0, ack_pending , QR req, fffff0000498
[  130.086150] firewire_ohci: IRQ 00000020 AR_resp
[  130.086154] firewire_ohci: AR spd 0 tl 1f, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  130.086169] firewire_ohci: IRQ 00000001 AT_req
[  130.086174] firewire_ohci: AT spd 0 tl 20, ffc1 -> ffc0, ack_pending , QR req, fffff0000458
[  130.087076] firewire_ohci: IRQ 00000020 AR_resp
[  130.087081] firewire_ohci: AR spd 0 tl 20, ffc0 -> ffc1, ack_complete, QR resp = 0006c930
[  130.087095] firewire_ohci: IRQ 00000001 AT_req
[  130.087100] firewire_ohci: AT spd 0 tl 21, ffc1 -> ffc0, ack_pending , QR req, fffff000045c
[  130.088150] firewire_ohci: IRQ 00000020 AR_resp
[  130.088155] firewire_ohci: AR spd 0 tl 21, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  130.088169] firewire_ohci: IRQ 00000001 AT_req
[  130.088173] firewire_ohci: AT spd 0 tl 22, ffc1 -> ffc0, ack_pending , QR req, fffff0000460
[  130.088995] firewire_ohci: IRQ 00000020 AR_resp
[  130.089000] firewire_ohci: AR spd 0 tl 22, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  130.089014] firewire_ohci: IRQ 00000001 AT_req
[  130.089019] firewire_ohci: AT spd 0 tl 23, ffc1 -> ffc0, ack_pending , QR req, fffff0000464
[  130.089996] firewire_ohci: IRQ 00000020 AR_resp
[  130.090000] firewire_ohci: AR spd 0 tl 23, ffc0 -> ffc1, ack_complete, QR resp = 4a564300
[  130.090014] firewire_ohci: IRQ 00000001 AT_req
[  130.090019] firewire_ohci: AT spd 0 tl 24, ffc1 -> ffc0, ack_pending , QR req, fffff0000468
[  130.090996] firewire_ohci: IRQ 00000020 AR_resp
[  130.091001] firewire_ohci: AR spd 0 tl 24, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  130.091016] firewire_ohci: IRQ 00000001 AT_req
[  130.091020] firewire_ohci: AT spd 0 tl 25, ffc1 -> ffc0, ack_pending , QR req, fffff000046c
[  130.091987] firewire_ohci: IRQ 00000020 AR_resp
[  130.091991] firewire_ohci: AR spd 0 tl 25, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  130.092006] firewire_ohci: IRQ 00000001 AT_req
[  130.092011] firewire_ohci: AT spd 0 tl 26, ffc1 -> ffc0, ack_pending , QR req, fffff0000470
[  130.092997] firewire_ohci: IRQ 00000020 AR_resp
[  130.093001] firewire_ohci: AR spd 0 tl 26, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  130.093006] firewire_core: rediscovered device fw1

>> At the moment I suspect there might be a race somewhere.
> 
> I agree, it must be timing related. That explains why it was affected by 
> the seemingly unrelated workqueue change.
> 

After observing the above behaviour, I am confident there's a race 
somewhere. I wanted to build the kernel with various sanitizers and also 
get a log of the crash on boot with the camera plugged in, but I no 
longer have physical access to the camera and the desktop. I've been 
meaning to ask someone to plug in the camera for me and set up the 
netconsole, but I haven't had the time yet. I'll try to get to it soon.

Thanks again for your help and time.

--
Tasos


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
