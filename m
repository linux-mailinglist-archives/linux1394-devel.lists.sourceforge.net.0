Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D728835731
	for <lists+linux1394-devel@lfdr.de>; Sun, 21 Jan 2024 19:06:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rRcCq-00060R-2Z;
	Sun, 21 Jan 2024 18:06:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tasos@tasossah.com>) id 1rRcCp-00060F-15
 for linux1394-devel@lists.sourceforge.net;
 Sun, 21 Jan 2024 18:06:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z7Vzk9STyJ4oot7WhEkov9mynOKEbxsm887rMa+OFAU=; b=SLoY0uJaCqtBkRRS5ZiA6f7Zir
 qY5SCgOut1nvZb7jew5rhfwIf0cNhSVWf3L8GgDHnFDoKfNd05GAcNzH9vbf+aEcfmibU4VBYzRBv
 QCj0Xh9bAHTtPQmxXpsTE68yS83fM+IBCfhanSp3CPOTSqvOhyutVNw6HKe2p0MmqqbM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:
 Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z7Vzk9STyJ4oot7WhEkov9mynOKEbxsm887rMa+OFAU=; b=DROLRGDYaIRECUnp/eLIKmggvI
 sLHg86IVbk09GpAMFwyqU+yJVuoAbV2EzW53HR89Zw5fRON0D/NhGbIS3Z4v/VUZEp+7Stz+08dvX
 6bR/NFhy8ji5t0biZulrgjaIwvg0uci2zYd9qB5YzAOoQohG2y8hphFcMA1XJeHbk7Q0=;
Received: from devnull.tasossah.com ([91.121.165.14])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rRcCl-0006YB-4u for linux1394-devel@lists.sourceforge.net;
 Sun, 21 Jan 2024 18:06:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=devnull.tasossah.com; s=vps; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:References:Cc:To:Subject:From:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z7Vzk9STyJ4oot7WhEkov9mynOKEbxsm887rMa+OFAU=; b=jG/3tdSK9p8Abd8nTj+oqNBE/9
 hiA8kRAz3nQZNj32C0NIrkBNLQ1HinLsy9P0PhhVfnt4sDWrCoXZLrDPv8h+zzJc2SV3ShAB8z1Eo
 gENWTOYbfVrOMxXsQz4iP2DzYSSOq476A0a+CIDintDwRLY3iuc+hQmsxLr0Y84WA/HM=;
Received: from [2a02:587:6a03:ec00::d54]
 by devnull.tasossah.com with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <tasos@tasossah.com>)
 id 1rRcCa-000bME-U4; Sun, 21 Jan 2024 20:05:49 +0200
Message-ID: <36ab63e4-91a2-415f-9dca-0bd748aa58da@tasossah.com>
Date: Sun, 21 Jan 2024 20:05:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Question regarding linux1394 and bug report
To: Adam Goldman <adamg@pobox.com>
References: <67f8f49f-0e95-49d4-abf5-9cb4692d9dd3@tasossah.com>
 <20240105150222.GA11325@workstation.local> <ZahqJTeKy6W2IRix@iguana.24-8.net>
Content-Language: el-GR, en-GB
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
In-Reply-To: <ZahqJTeKy6W2IRix@iguana.24-8.net>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2024-01-18 02:00, Adam Goldman wrote: > Hi Tasos, > > Are
 you sure 2.6.35-rc3 is working? The "fw_working" log doesn't appear > to
 include any video transmission. Hi Adam, It is possible I trimmed it to not
 spam the mailing list. As I do not remember,
 I generated fresh logs. It definitely
 works though as I used that old kernel to rip a few tapes. 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rRcCl-0006YB-4u
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

On 2024-01-18 02:00, Adam Goldman wrote:
> Hi Tasos,
> 
> Are you sure 2.6.35-rc3 is working? The "fw_working" log doesn't appear 
> to include any video transmission.

Hi Adam,

It is possible I trimmed it to not spam the mailing list. As I do not
remember, I generated fresh logs. It definitely works though as I
used that old kernel to rip a few tapes.

The following is from 2.6.35-rc3 on Ubuntu 10.10:
$ dvgrab -noavc -guid 00808801035809f1 -d 1
libiec61883 error: Failed to get channels available.
Established connection over channel 63
Waiting for DV...
Capture Started
"dvgrab-004.dv":     3.43 MiB 25 frames timecode 00:00:00.00 date 2024.01.18 06:09:43
Capture Stopped

[  494.955666] firewire_ohci: IRQ 00200000 cycle64Seconds
[  530.091424] firewire_ohci: IRQ 00000001 AT_req
[  530.091440] firewire_ohci: AT spd 0 tl 02, ffc1 -> ffc0, ack_pending , QR req, fffff000040c
[  530.092174] firewire_ohci: IRQ 00000020 AR_resp
[  530.092181] firewire_ohci: AR spd 0 tl 02, ffc0 -> ffc1, ack_complete, QR resp = 00808801
[  530.092240] firewire_ohci: IRQ 00000001 AT_req
[  530.092245] firewire_ohci: AT spd 0 tl 03, ffc1 -> ffc0, ack_pending , QR req, fffff0000410
[  530.093153] firewire_ohci: IRQ 00000020 AR_resp
[  530.093158] firewire_ohci: AR spd 0 tl 03, ffc0 -> ffc1, ack_complete, QR resp = 035809f1
[  530.412749] firewire_ohci: IRQ 00000001 AT_req
[  530.412754] firewire_ohci: AT spd 0 tl 04, ffc1 -> ffc0, ack_pending , QR req, fffff0000900
[  530.413935] firewire_ohci: IRQ 00000020 AR_resp
[  530.413940] firewire_ohci: AR spd 0 tl 04, ffc0 -> ffc1, ack_complete, QR resp = 3fffff01
[  530.413960] firewire_ohci: IRQ 00000001 AT_req
[  530.413964] firewire_ohci: AT spd 0 tl 05, ffc1 -> ffc0, ack_pending , QR req, fffff0000904
[  530.414964] firewire_ohci: IRQ 00000020 AR_resp
[  530.414968] firewire_ohci: AR spd 0 tl 05, ffc0 -> ffc1, ack_complete, QR resp = c03f3c7a
[  530.652665] firewire_ohci: IRQ 00000001 AT_req
[  530.652671] firewire_ohci: AT spd 0 tl 06, ffc1 -> ffc0, ack_pending , QR req, fffff0000900
[  530.653797] firewire_ohci: IRQ 00000020 AR_resp
[  530.653802] firewire_ohci: AR spd 0 tl 06, ffc0 -> ffc1, ack_complete, QR resp = 3fffff01
[  530.655259] firewire_ohci: IRQ 00000001 AT_req
[  530.655264] firewire_ohci: AT spd 0 tl 07, ffc1 -> ffc0, ack_pending , QR req, fffff0000904
[  530.655793] firewire_ohci: IRQ 00000020 AR_resp
[  530.655797] firewire_ohci: AR spd 0 tl 07, ffc0 -> ffc1, ack_complete, QR resp = c03f3c7a
[  530.690859] firewire_ohci: IRQ 00000080 IR
[  530.722082] firewire_ohci: IRQ 00000080 IR
[  530.753310] firewire_ohci: IRQ 00000080 IR
[  530.784539] firewire_ohci: IRQ 00000080 IR
[  530.815767] firewire_ohci: IRQ 00000080 IR
[  530.846995] firewire_ohci: IRQ 00000080 IR
[  530.878223] firewire_ohci: IRQ 00000080 IR
[  530.909451] firewire_ohci: IRQ 00000080 IR
[  530.940679] firewire_ohci: IRQ 00000080 IR
[  530.971907] firewire_ohci: IRQ 00000080 IR
[  531.003135] firewire_ohci: IRQ 00000080 IR
[  531.034363] firewire_ohci: IRQ 00000080 IR
[  531.065553] firewire_ohci: IRQ 00000080 IR
[  531.096820] firewire_ohci: IRQ 00000080 IR
[  531.128047] firewire_ohci: IRQ 00000080 IR
[  531.159275] firewire_ohci: IRQ 00000080 IR
[  531.190504] firewire_ohci: IRQ 00000080 IR
[  531.221732] firewire_ohci: IRQ 00000080 IR
[  531.252960] firewire_ohci: IRQ 00000080 IR
[  531.284188] firewire_ohci: IRQ 00000080 IR
[  531.315378] firewire_ohci: IRQ 00000080 IR
[  531.346643] firewire_ohci: IRQ 00000080 IR
[  531.377872] firewire_ohci: IRQ 00000080 IR
[  531.409100] firewire_ohci: IRQ 00000080 IR
[  531.440328] firewire_ohci: IRQ 00000080 IR
[  531.471556] firewire_ohci: IRQ 00000080 IR
[  531.502784] firewire_ohci: IRQ 00000080 IR
[  531.534012] firewire_ohci: IRQ 00000080 IR
[  531.565240] firewire_ohci: IRQ 00000080 IR
[  531.596468] firewire_ohci: IRQ 00000080 IR
[  531.627696] firewire_ohci: IRQ 00000080 IR
[  531.658924] firewire_ohci: IRQ 00000080 IR
[  531.690153] firewire_ohci: IRQ 00000080 IR
[  531.721381] firewire_ohci: IRQ 00000080 IR
[  531.752609] firewire_ohci: IRQ 00000080 IR
[  531.783837] firewire_ohci: IRQ 00000080 IR
[  532.073291] firewire_ohci: IRQ 00000001 AT_req
[  532.073298] firewire_ohci: AT spd 0 tl 08, ffc1 -> ffc0, ack_pending , QR req, fffff0000900
[  532.073912] firewire_ohci: IRQ 00000020 AR_resp
[  532.073916] firewire_ohci: AR spd 0 tl 08, ffc0 -> ffc1, ack_complete, QR resp = 3fffff01
[  532.075386] firewire_ohci: IRQ 00000001 AT_req
[  532.075391] firewire_ohci: AT spd 0 tl 09, ffc1 -> ffc0, ack_pending , QR req, fffff0000904
[  532.075918] firewire_ohci: IRQ 00000020 AR_resp
[  532.075922] firewire_ohci: AR spd 0 tl 09, ffc0 -> ffc1, ack_complete, QR resp = c03f3c7a

> For reference, a kernel log of successful video transmission is below. I 
> used "dvgrab -noavc -guid 080046010261a1ff -d 1 -f avi /tmp/foo.avi" 
> with a DCR-TRV120 in camera mode with no tape. (Of course, you would use 
> -guid 00808801035809f1 with your GR-D20E.) Specifying the GUID prevents 
> AV/C probing from cluttering the log. The computer reads '0900 oMPR and 
> '0904 oPCR0 twice, and it sees that there is a broadcast connection on 
> channel 63. At this time it will modify its own iPCR, but there is no 
> Firewire transaction for this. Then the live video is received in a 
> series of isochronous packets. Finally it reads oMPR and oPCR0 again - I 
> don't know why. The dvgrab console output is ""/tmp/foo001.avi":     
> 3.62 MiB 30 frames timecode 45:85:85.45 date 2024.01.17 02:09:26".

Thanks for the hints and the reference. It does generate cleaner and 
more readable logs this way. I also didn't know one can just capture 
from camera mode through firewire, which simplifies things.

This is a typical failed capture attempt on newer kernels (6.7):
$ dvgrab -noavc -guid 00808801035809f1 -d 1
libiec61883 warning: Transmission node has no plugs online!
Established connection over channel 63
Waiting for DV...
^C""     0.00 MiB 0 frames
Capture Stopped
Error: no DV

[ 3313.954351] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[ 3313.954373] firewire_ohci 0000:01:03.0: AT spd 0 tl 34, ffc1 -> ffc0, ack_pending , QR req, fffff0000900
[ 3313.955278] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[ 3313.955291] firewire_ohci 0000:01:03.0: AR spd 0 tl 34, ffc0 -> ffc1, ack_complete, QR resp = 3fffff01
[ 3313.955345] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[ 3313.955351] firewire_ohci 0000:01:03.0: AT spd 0 tl 35, ffc1 -> ffc0, ack_pending , QR req, fffff0000904
[ 3313.956255] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[ 3313.956261] firewire_ohci 0000:01:03.0: AR spd 0 tl 35, ffc0 -> ffc1, ack_complete, QR resp = 003f007a
[ 3313.956550] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[ 3313.956555] firewire_ohci 0000:01:03.0: AT spd 0 tl 36, ffc1 -> ffc0, ack_pending , QR req, fffff0000900
[ 3313.957262] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[ 3313.957266] firewire_ohci 0000:01:03.0: AR spd 0 tl 36, ffc0 -> ffc1, ack_complete, QR resp = 3fffff01
[ 3313.958787] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[ 3313.958791] firewire_ohci 0000:01:03.0: AT spd 0 tl 37, ffc1 -> ffc0, ack_pending , QR req, fffff0000904
[ 3313.959260] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[ 3313.959264] firewire_ohci 0000:01:03.0: AR spd 0 tl 37, ffc0 -> ffc1, ack_complete, QR resp = 003f007a
^C
[ 3615.686380] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[ 3615.686393] firewire_ohci 0000:01:03.0: AT spd 0 tl 39, ffc1 -> ffc0, ack_pending , QR req, fffff0000900
[ 3615.686700] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[ 3615.686706] firewire_ohci 0000:01:03.0: AR spd 0 tl 39, ffc0 -> ffc1, ack_complete, QR resp = 3fffff01
[ 3615.688323] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[ 3615.688329] firewire_ohci 0000:01:03.0: AT spd 0 tl 3a, ffc1 -> ffc0, ack_pending , QR req, fffff0000904
[ 3615.688716] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[ 3615.688723] firewire_ohci 0000:01:03.0: AR spd 0 tl 3a, ffc0 -> ffc1, ack_complete, QR resp = 003f007a

That said, something interesting happened while testing.
I was able to get a capture with kernel 6.7 out of pure luck. Luckily I 
did have logging enabled when it happened. I ran dvgrab, it hung for 
about 5 seconds, and then there was a reset and it started capturing!

[  310.458176] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  310.458188] firewire_ohci 0000:01:03.0: AT spd 0 tl 3d, ffc1 -> ffc0, ack_pending , QR req, fffff0000900
[  310.458501] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  310.458507] firewire_ohci 0000:01:03.0: AR spd 0 tl 3d, ffc0 -> ffc1, ack_complete, QR resp = 3fffff01
[  310.458537] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  310.458541] firewire_ohci 0000:01:03.0: AT spd 0 tl 3e, ffc1 -> ffc0, ack_pending , QR req, fffff0000904
[  310.459484] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  310.459488] firewire_ohci 0000:01:03.0: AR spd 0 tl 3e, ffc0 -> ffc1, ack_complete, QR resp = 003f007a
[  310.459760] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  310.459765] firewire_ohci 0000:01:03.0: AT spd 0 tl 3f, ffc1 -> ffc0, ack_pending , QR req, fffff0000900
[  310.460496] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  310.460501] firewire_ohci 0000:01:03.0: AR spd 0 tl 3f, ffc0 -> ffc1, ack_complete, QR resp = 3fffff01
[  310.462244] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  310.462250] firewire_ohci 0000:01:03.0: AT spd 0 tl 00, ffc1 -> ffc0, ack_pending , QR req, fffff0000904
[  310.462495] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  310.462501] firewire_ohci 0000:01:03.0: AR spd 0 tl 00, ffc0 -> ffc1, ack_complete, QR resp = 003f007a
[  314.728317] firewire_ohci 0000:01:03.0: IRQ 00000010 AR_req
[  314.728331] firewire_ohci 0000:01:03.0: AR evt_bus_reset, generation 22
[  314.728494] firewire_ohci 0000:01:03.0: IRQ 00010000 selfID
[  314.728507] firewire_ohci 0000:01:03.0: 2 selfIDs, generation 22, local node ID ffc1
[  314.728510] firewire_ohci 0000:01:03.0: selfID 0: 807f0882, phy 0 [p..] S100 gc=63 +0W Lci
[  314.728514] firewire_ohci 0000:01:03.0: selfID 0: 817f8cd0, phy 1 [c-.] S400 gc=63 -3W Lc
[  314.728531] firewire_core 0000:01:03.0: phy config: new root=ffc1, gap_count=5
[  314.728542] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  314.728546] firewire_ohci 0000:01:03.0: AT ack_complete, PHY 01c50000 fe3affff
[  314.728559] firewire_ohci 0000:01:03.0: IRQ 00000010 AR_req
[  314.728563] firewire_ohci 0000:01:03.0: AR evt_bus_reset, generation 23
[  314.728565] firewire_ohci 0000:01:03.0: AR evt_bus_reset, generation 23
[  314.728733] firewire_ohci 0000:01:03.0: IRQ 00010000 selfID
[  314.728745] firewire_ohci 0000:01:03.0: 2 selfIDs, generation 24, local node ID ffc1
[  314.728747] firewire_ohci 0000:01:03.0: selfID 0: 80450880, phy 0 [p..] S100 gc=5 +0W Lc
[  314.728750] firewire_ohci 0000:01:03.0: selfID 0: 81458cd2, phy 1 [c-.] S400 gc=5 -3W Lci
[  315.253932] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.253945] firewire_ohci 0000:01:03.0: AT spd 0 tl 04, ffc1 -> ffc0, ack_pending , QR req, fffff0000400
[  315.253983] firewire_core 0000:01:03.0: rediscovered device fw0
[  315.253990] firewire_core 0000:01:03.0: giving up on refresh of device fw1: bus reset
[  315.254817] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.254823] firewire_ohci 0000:01:03.0: AR spd 0 tl 04, ffc0 -> ffc1, ack_complete, QR resp = 0426907c
[  315.254839] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.254844] firewire_ohci 0000:01:03.0: AT spd 0 tl 1e, ffc1 -> ffc0, ack_pending , QR req, fffff0000404
[  315.255809] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.255813] firewire_ohci 0000:01:03.0: AR spd 0 tl 1e, ffc0 -> ffc1, ack_complete, QR resp = 31333934
[  315.255829] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.255833] firewire_ohci 0000:01:03.0: AT spd 0 tl 1f, ffc1 -> ffc0, ack_pending , QR req, fffff0000408
[  315.256851] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.256855] firewire_ohci 0000:01:03.0: AR spd 0 tl 1f, ffc0 -> ffc1, ack_complete, QR resp = e0644000
[  315.256871] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.256875] firewire_ohci 0000:01:03.0: AT spd 0 tl 20, ffc1 -> ffc0, ack_pending , QR req, fffff000040c
[  315.257800] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.257805] firewire_ohci 0000:01:03.0: AR spd 0 tl 20, ffc0 -> ffc1, ack_complete, QR resp = 00808801
[  315.257821] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.257825] firewire_ohci 0000:01:03.0: AT spd 0 tl 21, ffc1 -> ffc0, ack_pending , QR req, fffff0000410
[  315.258807] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.258813] firewire_ohci 0000:01:03.0: AR spd 0 tl 21, ffc0 -> ffc1, ack_complete, QR resp = 035809f1
[  315.258831] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.258835] firewire_ohci 0000:01:03.0: AT spd 0 tl 22, ffc1 -> ffc0, ack_pending , QR req, fffff0000414
[  315.259909] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.259914] firewire_ohci 0000:01:03.0: AR spd 0 tl 22, ffc0 -> ffc1, ack_complete, QR resp = 0008c442
[  315.259930] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.259935] firewire_ohci 0000:01:03.0: AT spd 0 tl 23, ffc1 -> ffc0, ack_pending , QR req, fffff0000418
[  315.260827] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.260833] firewire_ohci 0000:01:03.0: AR spd 0 tl 23, ffc0 -> ffc1, ack_complete, QR resp = 03008088
[  315.260850] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.260854] firewire_ohci 0000:01:03.0: AT spd 0 tl 24, ffc1 -> ffc0, ack_pending , QR req, fffff000041c
[  315.261817] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.261822] firewire_ohci 0000:01:03.0: AR spd 0 tl 24, ffc0 -> ffc1, ack_complete, QR resp = 8100000f
[  315.261838] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.261842] firewire_ohci 0000:01:03.0: AT spd 0 tl 25, ffc1 -> ffc0, ack_pending , QR req, fffff0000420
[  315.262811] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.262817] firewire_ohci 0000:01:03.0: AR spd 0 tl 25, ffc0 -> ffc1, ack_complete, QR resp = 0c0083c0
[  315.262838] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.262842] firewire_ohci 0000:01:03.0: AT spd 0 tl 26, ffc1 -> ffc0, ack_pending , QR req, fffff0000424
[  315.263812] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.263817] firewire_ohci 0000:01:03.0: AR spd 0 tl 26, ffc0 -> ffc1, ack_complete, QR resp = d1000005
[  315.263838] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.263842] firewire_ohci 0000:01:03.0: AT spd 0 tl 27, ffc1 -> ffc0, ack_pending , QR req, fffff0000428
[  315.264958] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.264964] firewire_ohci 0000:01:03.0: AR spd 0 tl 27, ffc0 -> ffc1, ack_complete, QR resp = 8d000013
[  315.264980] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.264985] firewire_ohci 0000:01:03.0: AT spd 0 tl 28, ffc1 -> ffc0, ack_pending , QR req, fffff000042c
[  315.265859] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.265864] firewire_ohci 0000:01:03.0: AR spd 0 tl 28, ffc0 -> ffc1, ack_complete, QR resp = c3000008
[  315.265880] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.265885] firewire_ohci 0000:01:03.0: AT spd 0 tl 29, ffc1 -> ffc0, ack_pending , QR req, fffff0000430
[  315.266920] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.266927] firewire_ohci 0000:01:03.0: AR spd 0 tl 29, ffc0 -> ffc1, ack_complete, QR resp = 1701006b
[  315.266946] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.266950] firewire_ohci 0000:01:03.0: AT spd 0 tl 2a, ffc1 -> ffc0, ack_pending , QR req, fffff0000434
[  315.267846] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.267852] firewire_ohci 0000:01:03.0: AR spd 0 tl 2a, ffc0 -> ffc1, ack_complete, QR resp = 81000013
[  315.267869] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.267874] firewire_ohci 0000:01:03.0: AT spd 0 tl 2b, ffc1 -> ffc0, ack_pending , QR req, fffff0000480
[  315.268803] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.268807] firewire_ohci 0000:01:03.0: AR spd 0 tl 2b, ffc0 -> ffc1, ack_complete, QR resp = 0006c2ad
[  315.268824] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.268828] firewire_ohci 0000:01:03.0: AT spd 0 tl 2c, ffc1 -> ffc0, ack_pending , QR req, fffff0000484
[  315.269801] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.269805] firewire_ohci 0000:01:03.0: AR spd 0 tl 2c, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  315.269821] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.269826] firewire_ohci 0000:01:03.0: AT spd 0 tl 2d, ffc1 -> ffc0, ack_pending , QR req, fffff0000488
[  315.270814] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.270820] firewire_ohci 0000:01:03.0: AR spd 0 tl 2d, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  315.270839] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.270844] firewire_ohci 0000:01:03.0: AT spd 0 tl 2e, ffc1 -> ffc0, ack_pending , QR req, fffff000048c
[  315.271830] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.271834] firewire_ohci 0000:01:03.0: AR spd 0 tl 2e, ffc0 -> ffc1, ack_complete, QR resp = 47522d44
[  315.271851] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.271855] firewire_ohci 0000:01:03.0: AT spd 0 tl 2f, ffc1 -> ffc0, ack_pending , QR req, fffff0000490
[  315.273053] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.273058] firewire_ohci 0000:01:03.0: AR spd 0 tl 2f, ffc0 -> ffc1, ack_complete, QR resp = 32300000
[  315.273075] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.273080] firewire_ohci 0000:01:03.0: AT spd 0 tl 30, ffc1 -> ffc0, ack_pending , QR req, fffff0000494
[  315.273807] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.273812] firewire_ohci 0000:01:03.0: AR spd 0 tl 30, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  315.273829] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.273834] firewire_ohci 0000:01:03.0: AT spd 0 tl 31, ffc1 -> ffc0, ack_pending , QR req, fffff0000498
[  315.274814] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.274820] firewire_ohci 0000:01:03.0: AR spd 0 tl 31, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  315.274838] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.274842] firewire_ohci 0000:01:03.0: AT spd 0 tl 32, ffc1 -> ffc0, ack_pending , QR req, fffff000044c
[  315.275807] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.275812] firewire_ohci 0000:01:03.0: AR spd 0 tl 32, ffc0 -> ffc1, ack_complete, QR resp = 0002ad09
[  315.275827] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.275832] firewire_ohci 0000:01:03.0: AT spd 0 tl 33, ffc1 -> ffc0, ack_pending , QR req, fffff0000450
[  315.276818] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.276822] firewire_ohci 0000:01:03.0: AR spd 0 tl 33, ffc0 -> ffc1, ack_complete, QR resp = 1701006b
[  315.276839] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.276843] firewire_ohci 0000:01:03.0: AT spd 0 tl 34, ffc1 -> ffc0, ack_pending , QR req, fffff0000454
[  315.277862] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.277866] firewire_ohci 0000:01:03.0: AR spd 0 tl 34, ffc0 -> ffc1, ack_complete, QR resp = 8100000b
[  315.277883] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.277887] firewire_ohci 0000:01:03.0: AT spd 0 tl 35, ffc1 -> ffc0, ack_pending , QR req, fffff0000480
[  315.278814] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.278819] firewire_ohci 0000:01:03.0: AR spd 0 tl 35, ffc0 -> ffc1, ack_complete, QR resp = 0006c2ad
[  315.278837] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.278842] firewire_ohci 0000:01:03.0: AT spd 0 tl 36, ffc1 -> ffc0, ack_pending , QR req, fffff0000484
[  315.279887] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.279891] firewire_ohci 0000:01:03.0: AR spd 0 tl 36, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  315.279907] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.279911] firewire_ohci 0000:01:03.0: AT spd 0 tl 37, ffc1 -> ffc0, ack_pending , QR req, fffff0000488
[  315.280806] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.280812] firewire_ohci 0000:01:03.0: AR spd 0 tl 37, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  315.280830] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.280835] firewire_ohci 0000:01:03.0: AT spd 0 tl 38, ffc1 -> ffc0, ack_pending , QR req, fffff000048c
[  315.281819] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.281823] firewire_ohci 0000:01:03.0: AR spd 0 tl 38, ffc0 -> ffc1, ack_complete, QR resp = 47522d44
[  315.281839] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.281843] firewire_ohci 0000:01:03.0: AT spd 0 tl 39, ffc1 -> ffc0, ack_pending , QR req, fffff0000490
[  315.282811] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.282817] firewire_ohci 0000:01:03.0: AR spd 0 tl 39, ffc0 -> ffc1, ack_complete, QR resp = 32300000
[  315.282838] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.282842] firewire_ohci 0000:01:03.0: AT spd 0 tl 3a, ffc1 -> ffc0, ack_pending , QR req, fffff0000494
[  315.283813] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.283818] firewire_ohci 0000:01:03.0: AR spd 0 tl 3a, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  315.284289] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.284294] firewire_ohci 0000:01:03.0: AT spd 0 tl 3b, ffc1 -> ffc0, ack_pending , QR req, fffff0000498
[  315.284963] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.284969] firewire_ohci 0000:01:03.0: AR spd 0 tl 3b, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  315.285006] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.285011] firewire_ohci 0000:01:03.0: AT spd 0 tl 3c, ffc1 -> ffc0, ack_pending , QR req, fffff0000474
[  315.285890] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.285895] firewire_ohci 0000:01:03.0: AR spd 0 tl 3c, ffc0 -> ffc1, ack_complete, QR resp = 0002f1df
[  315.285925] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.285930] firewire_ohci 0000:01:03.0: AT spd 0 tl 3d, ffc1 -> ffc0, ack_pending , QR req, fffff0000478
[  315.286939] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.286945] firewire_ohci 0000:01:03.0: AR spd 0 tl 3d, ffc0 -> ffc1, ack_complete, QR resp = 00808801
[  315.286963] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.286967] firewire_ohci 0000:01:03.0: AT spd 0 tl 3e, ffc1 -> ffc0, ack_pending , QR req, fffff000047c
[  315.287818] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.287823] firewire_ohci 0000:01:03.0: AR spd 0 tl 3e, ffc0 -> ffc1, ack_complete, QR resp = 035809f1
[  315.287840] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.287845] firewire_ohci 0000:01:03.0: AT spd 0 tl 3f, ffc1 -> ffc0, ack_pending , QR req, fffff0000438
[  315.288807] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.288812] firewire_ohci 0000:01:03.0: AR spd 0 tl 3f, ffc0 -> ffc1, ack_complete, QR resp = 00043327
[  315.288829] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.288833] firewire_ohci 0000:01:03.0: AT spd 0 tl 00, ffc1 -> ffc0, ack_pending , QR req, fffff000043c
[  315.289803] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.289807] firewire_ohci 0000:01:03.0: AR spd 0 tl 00, ffc0 -> ffc1, ack_complete, QR resp = 1200a02d
[  315.289823] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.289828] firewire_ohci 0000:01:03.0: AT spd 0 tl 01, ffc1 -> ffc0, ack_pending , QR req, fffff0000440
[  315.290816] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.290822] firewire_ohci 0000:01:03.0: AR spd 0 tl 01, ffc0 -> ffc1, ack_complete, QR resp = 13010001
[  315.290948] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.290953] firewire_ohci 0000:01:03.0: AT spd 0 tl 02, ffc1 -> ffc0, ack_pending , QR req, fffff0000444
[  315.291828] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.291833] firewire_ohci 0000:01:03.0: AR spd 0 tl 02, ffc0 -> ffc1, ack_complete, QR resp = 1701006b
[  315.291851] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.291855] firewire_ohci 0000:01:03.0: AT spd 0 tl 03, ffc1 -> ffc0, ack_pending , QR req, fffff0000448
[  315.293038] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.293043] firewire_ohci 0000:01:03.0: AR spd 0 tl 03, ffc0 -> ffc1, ack_complete, QR resp = 8100000e
[  315.293059] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.293064] firewire_ohci 0000:01:03.0: AT spd 0 tl 04, ffc1 -> ffc0, ack_pending , QR req, fffff0000480
[  315.293821] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.293825] firewire_ohci 0000:01:03.0: AR spd 0 tl 04, ffc0 -> ffc1, ack_complete, QR resp = 0006c2ad
[  315.293841] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.293846] firewire_ohci 0000:01:03.0: AT spd 0 tl 05, ffc1 -> ffc0, ack_pending , QR req, fffff0000484
[  315.294828] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.294834] firewire_ohci 0000:01:03.0: AR spd 0 tl 05, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  315.294852] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.294856] firewire_ohci 0000:01:03.0: AT spd 0 tl 06, ffc1 -> ffc0, ack_pending , QR req, fffff0000488
[  315.295821] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.295826] firewire_ohci 0000:01:03.0: AR spd 0 tl 06, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  315.295844] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.295848] firewire_ohci 0000:01:03.0: AT spd 0 tl 07, ffc1 -> ffc0, ack_pending , QR req, fffff000048c
[  315.296832] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.296836] firewire_ohci 0000:01:03.0: AR spd 0 tl 07, ffc0 -> ffc1, ack_complete, QR resp = 47522d44
[  315.296851] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.296856] firewire_ohci 0000:01:03.0: AT spd 0 tl 08, ffc1 -> ffc0, ack_pending , QR req, fffff0000490
[  315.297811] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.297815] firewire_ohci 0000:01:03.0: AR spd 0 tl 08, ffc0 -> ffc1, ack_complete, QR resp = 32300000
[  315.297831] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.297835] firewire_ohci 0000:01:03.0: AT spd 0 tl 09, ffc1 -> ffc0, ack_pending , QR req, fffff0000494
[  315.298819] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.298825] firewire_ohci 0000:01:03.0: AR spd 0 tl 09, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  315.298842] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.298847] firewire_ohci 0000:01:03.0: AT spd 0 tl 0a, ffc1 -> ffc0, ack_pending , QR req, fffff0000498
[  315.299891] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.299896] firewire_ohci 0000:01:03.0: AR spd 0 tl 0a, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  315.299912] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.299916] firewire_ohci 0000:01:03.0: AT spd 0 tl 0b, ffc1 -> ffc0, ack_pending , QR req, fffff0000458
[  315.300810] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.300816] firewire_ohci 0000:01:03.0: AR spd 0 tl 0b, ffc0 -> ffc1, ack_complete, QR resp = 0006c930
[  315.300840] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.300844] firewire_ohci 0000:01:03.0: AT spd 0 tl 0c, ffc1 -> ffc0, ack_pending , QR req, fffff000045c
[  315.301828] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.301835] firewire_ohci 0000:01:03.0: AR spd 0 tl 0c, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  315.302987] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.302994] firewire_ohci 0000:01:03.0: AT spd 0 tl 0d, ffc1 -> ffc0, ack_pending , QR req, fffff0000460
[  315.303804] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.303809] firewire_ohci 0000:01:03.0: AR spd 0 tl 0d, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  315.303827] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.303831] firewire_ohci 0000:01:03.0: AT spd 0 tl 0e, ffc1 -> ffc0, ack_pending , QR req, fffff0000464
[  315.304983] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.304989] firewire_ohci 0000:01:03.0: AR spd 0 tl 0e, ffc0 -> ffc1, ack_complete, QR resp = 4a564300
[  315.305006] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.305010] firewire_ohci 0000:01:03.0: AT spd 0 tl 0f, ffc1 -> ffc0, ack_pending , QR req, fffff0000468
[  315.305895] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.305910] firewire_ohci 0000:01:03.0: AR spd 0 tl 0f, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  315.305940] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.305945] firewire_ohci 0000:01:03.0: AT spd 0 tl 10, ffc1 -> ffc0, ack_pending , QR req, fffff000046c
[  315.306954] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.306961] firewire_ohci 0000:01:03.0: AR spd 0 tl 10, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  315.306979] firewire_ohci 0000:01:03.0: IRQ 00000001 AT_req
[  315.306984] firewire_ohci 0000:01:03.0: AT spd 0 tl 11, ffc1 -> ffc0, ack_pending , QR req, fffff0000470
[  315.307848] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
[  315.307852] firewire_ohci 0000:01:03.0: AR spd 0 tl 11, ffc0 -> ffc1, ack_complete, QR resp = 00000000
[  315.307862] firewire_core 0000:01:03.0: rediscovered device fw1
[  317.053817] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.085103] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.116352] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.147606] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.178855] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.210102] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.241352] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.272601] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.303850] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.335100] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.366349] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.397599] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.428848] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.460098] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.491347] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.522597] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.553847] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.585096] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.616346] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.647595] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.678845] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.710094] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.741344] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.772594] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.803843] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.835093] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.866342] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.897592] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.928841] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.960091] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  317.991341] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  318.022590] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  318.053840] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  318.085090] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  318.116301] firewire_ohci 0000:01:03.0: IRQ 00000080 IR
[  318.147590] firewire_ohci 0000:01:03.0: IRQ 00000080 IR

I have not been able to get it to work since, after multiple attempts. I 
even tried resetting the device with raw1394_reset_bus_new() using both 
reset types while dvgrab is waiting, and it hasn't changed anything. At 
the moment I suspect there might be a race somewhere.

Thanks

--
Tasos


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
