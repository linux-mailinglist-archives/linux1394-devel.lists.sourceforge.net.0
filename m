Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2B7AECD01
	for <lists+linux1394-devel@lfdr.de>; Sun, 29 Jun 2025 16:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+4AvaqQnYAWQ1ixJLQlROT/TY5vi2XftcWqzlEH9JGs=; b=S8KS7UUfJ7bcwShU5n+xvtjcag
	vgzGRoHIEbD2TnV5szb72x7MsRtDt9Ycfs5Cua3pvYEgkarcbTwZ8Qbs8RgmZcIp5VThYawyzuc/C
	PFxVo5v22iuDLGkR3Ohxyzx8qtzZuH9R0DJJEeClXKB8GANr+FWTk2qlivNxu2P0oAnA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uVsbE-0000py-Q5;
	Sun, 29 Jun 2025 14:01:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uVsb9-0000pn-Tp
 for linux1394-devel@lists.sourceforge.net;
 Sun, 29 Jun 2025 14:01:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nssYNPVNYwa6SQWJGhQI7GObr+s6zRCPK6GJckbv7mQ=; b=DFSw3cprerRsFMC6vRg4puI8Gh
 8qbDjmnlLbd7MXe+Cuirv52LQaLKvi6mTY63CUDsEv025MQknn2j4zTlwLepcAKWRJ9xxJ4xgHfyR
 mkEWFtrTJhCPl3q09y+SgOpfaAWJIzhRCevJRtzlj0PGIDRj2hXeAMvyTzef5CNab8Nc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nssYNPVNYwa6SQWJGhQI7GObr+s6zRCPK6GJckbv7mQ=; b=DTAoXbnI9WEuyz05+jniO1THkQ
 jMkvBNPy97SziKNkiU/OJKlewvOGQmiBj+iM7+v+10yfeoS75aHReFhWjR0F8i0RVQUK3WAXbvCjL
 I2uJvq/5Wt3vXIT2t08hAJOi870wtCoqg8QvdXfl5E4HzQyfPz/9SXg9Yn3gUe+4cPU0=;
Received: from fhigh-a4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uVsb8-0001KA-Nc for linux1394-devel@lists.sourceforge.net;
 Sun, 29 Jun 2025 14:01:35 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 14FC91400060;
 Sun, 29 Jun 2025 10:01:24 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-12.internal (MEProxy); Sun, 29 Jun 2025 10:01:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:date:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:subject:subject:to:to; s=fm2;
 t=1751205684; x=1751292084; bh=nssYNPVNYwa6SQWJGhQI7GObr+s6zRCP
 K6GJckbv7mQ=; b=P5TOPB5UWuJfWjIpAt0nFDG8g4j1UaxjLBRKO9Q8YSEms2of
 YWSIbDlGK8Fm/95hEqv/7XYsPHpF0QczlLkFXssJ2bDsYOlzDav5YhTlZbBekLF0
 FDuLhoAWa27/FUjTgQ0sPMhB1jM66NbdNRCvlSg+y0AiO5tAciKFczB99V8HUmbd
 pz/81NnLPIHNrlCExG2UFVTsBDMc1QxMrgj+H6y0nOCVK11U5EkRRqShWOYJ3abs
 J6s/hX7lJIdWONRRtjTb2N57lp7h/viQf2EABEpIv/2SWI//OR7tVFqbb7MF6Qj/
 DfCuzOsZC4g4T7Jvsquz/ymE3cFPtN9/aCg0EQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1751205684; x=
 1751292084; bh=nssYNPVNYwa6SQWJGhQI7GObr+s6zRCPK6GJckbv7mQ=; b=Q
 ZDcgB/892hg24YozSg1hvULX5JOTSUTysATZ4jx8OKbT7hrFMgLGAlEq8c6X+5pZ
 WYlj+Wr1XkPE0NYeYkeNswENTM+B72Vr3tPapsLuuyb+ssvnNWKM4+DjrU/Fysj3
 kuwnZuuhJb4Y6V6A0GRoo73+pvBJDU80Q+Kyr0f97/nGFs1LymAGfeO56sJq9KIa
 nErnDC+y1hSJgg8m740CC4zT2tRd7tftaO239wnTXAZ3MUf2lLWQDANa70mpmoKm
 lxJab2XkZVmWRwi7ndHZAwF+2I6bDyiviaZnQG816d8P9VZt2WGeMHCh0wljVYXP
 nTN3TspDcwz7DPT3JICYw==
X-ME-Sender: <xms:MkdhaLEAvwPmHuXif1Ir7dVQ4Ecs0mU2GkZblJDl1Rao813kUPo-JQ>
 <xme:MkdhaIVtFJwVJKWVEabUNl36QFiudTykOPWpr6OY9U24ClIuEGDlKcCpOMtTMGOvf
 9TD242pkThh_OuWP90>
X-ME-Received: <xmr:MkdhaNJ3FBPlYt_sPe86gtb7KJUuAGr1-p3vI-oxy-Gi-rHqnPnobkd7YnfiOIq2HffEOnUpOO6pj5Tn1p262g5CXKu1gKm-9enh>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdeltddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtugfgjgesthekredttd
 dtjeenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepheeifffffeeftd
 ejtdejhfdvveevgedtueelteettdeuleffuefgheffhfekjedtnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtohepnhhoshhprghmsehkohhtrgdrmhhovgdprhgtphhtthhopehlihhnuh
 igudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvght
X-ME-Proxy: <xmx:M0dhaJEc2VmOfYPjfPcP81--edKuxUBtanJsPKG6IvEGI7W8x-159g>
 <xmx:M0dhaBU0C6G274pn-G782LJMeIs2CsMxmzonIcGhGo4aXvJKlzzANw>
 <xmx:M0dhaEOn0lwwvZJat4Dy7EUyCCO77YlpNnVJN0wAwQhRZomH6gv8Cw>
 <xmx:M0dhaA37WIaK8HvoDpWq3rVBNRZ9iWyGGKLgz9MCTlGWO0SRF5Byzg>
 <xmx:NEdhaINl6rj3-FcW4QBuY98r2eQobK0ZO0dBK5msiCL_ZrDIqU7p-Zvr>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 29 Jun 2025 10:01:22 -0400 (EDT)
Date: Sun, 29 Jun 2025 23:01:19 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: nospam@kota.moe
Subject: Re: Fwd: Adding timeouts to device access?
Message-ID: <20250629140119.GA93828@workstation.local>
Mail-Followup-To: nospam@kota.moe, linux1394-devel@lists.sourceforge.net
References: <CACsxjPaHOUFB_p64ze49NazAmdiJg7frL2pAjQyUmvheZssJCA@mail.gmail.com>
 <CACsxjPZcUbe2ZwyWqLq_hVHzahJrn9v0fXSLKAccgwADH5v6SQ@mail.gmail.com>
 <CACsxjPbD4H=GUqkK8JhwithvZybrfokduEC+wnozn_awdHyOSg@mail.gmail.com>
 <20250629024836.GA16759@workstation.local>
 <CACsxjPY-Tw=W5X-YR340wKiMNJZHh=dE+Kkys4+7=vsd-=LQ+Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACsxjPY-Tw=W5X-YR340wKiMNJZHh=dE+Kkys4+7=vsd-=LQ+Q@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On Sun, Jun 29, 2025 at 02:32:49PM +1000, 小太 wrote:
    > The Firewire adapter is an old HP HI349 PCIe card (lspci info below), and
    > it's connected to an M-Audio Profire 610 audio interface. > CPU is [...]
    
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1uVsb8-0001KA-Nc
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
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

SGksCgpPbiBTdW4sIEp1biAyOSwgMjAyNSBhdCAwMjozMjo0OVBNICsxMDAwLCDlsI/lpKogd3Jv
dGU6Cj4gVGhlIEZpcmV3aXJlIGFkYXB0ZXIgaXMgYW4gb2xkIEhQIEhJMzQ5IFBDSWUgY2FyZCAo
bHNwY2kgaW5mbyBiZWxvdyksIGFuZAo+IGl0J3MgY29ubmVjdGVkIHRvIGFuIE0tQXVkaW8gUHJv
ZmlyZSA2MTAgYXVkaW8gaW50ZXJmYWNlLgo+IENQVSBpcyBhIEFNRCAzOTYwWCBvbiBhIFRSWDQw
IFBSTyBXSUZJIG1vdGhlcmJvYXJkCgpUaGlzIGlzIHRoZSBmaXJzdCB0aW1lIEkndmUgYmVlbiBp
bnZvbHZlZCB3aXRoIEFnZXJlIEZXNTMzLiBBbnl3YXkKdGhhbmtzIGZvciB0aGUgaW5mb3JtYXRp
b24uCgo+IFRoZSBoYXJkd2FyZSBnZW5lcmFsbHkgb25seSBzdG9wcyByZXNwb25kaW5nIHdoZW4g
bGlnaHRzIG9yIGV4aGF1c3QgZmFucwo+IGFyZSB0dXJuZWQgb2ZmIG9uIHRoZSBzYW1lIGVsZWN0
cmljYWwgY2lyY3VpdCBhcyB0aGUgY29tcHV0ZXIsIGJ1dCBpdCdzCj4gdmVyeSBpbmZyZXF1ZW50
LiBQZXJoYXBzIGZyb20gRU1JIG9yIGEgdm9sdGFnZSBzcGlrZS4uLj8KPiBJIG9yaWdpbmFsbHkg
aGFkIGEgZ2VuZXJpYyBjaGluZXNlIGFkYXB0ZXIgKGRvbid0IGhhdmUgbHNwY2kgZGV0YWlscywK
PiBzb3JyeSkgdGhhdCBJIHN3YXBwZWQgb3V0IGJlY2F1c2UgaXQgd2FzIGEgbXVjaCBtb3JlIGZy
ZXF1ZW50IGlzc3VlIG9uIHRoYXQKPiBvbmUsIGFuZCBpdCBtb3N0bHkgd2VudCBhd2F5IHdpdGgg
dGhlIEhQIGFkYXB0ZXIuCj4gCj4gQWZ0ZXIgdGhlIGZhaWx1cmUgb2NjdXJzLCBJIGhhdmUgdG8g
cG93ZXIgY3ljbGUgdGhlIGNvbXB1dGVyIGEgZmV3IHRpbWVzCj4gYmVmb3JlIGV2ZXJ5dGhpbmcg
aXMgd29ya2luZyBhZ2FpbiAoZm9yIGJvdGggZncwIGFuZCBmdzEgZGV2aWNlcyB0byBiZQo+IGRl
dGVjdGVkKS4KPiBJZiBJIGRvbid0IGtlZXAgb24gcG93ZXIgY3ljbGluZyB1bnRpbCBpdCB3b3Jr
cyBhZ2FpbiwgYnV0IGluc3RlYWQ6Cj4gIDEuIERpc2Nvbm5lY3QgdGhlIFByb2ZpcmUgNjEwIChm
dzEpCj4gIDIuIEltbWVkaWF0ZWx5IHBvd2VyIGN5Y2xlCj4gIDMuIC0tPiBUaGUgRmlyZXdpcmUg
YWRhcHRlciAoZncwKSBnZXRzIGRldGVjdGVkIGZpbmUKPiAgNC4gVW5sb2FkIGZpcmV3aXJlX29o
Y2kgKG1vZHByb2JlIC1yIGZpcmV3aXJlX29oY2kpCj4gIDUuIFJlY29ubmVjdCB0aGUgUHJvZmly
ZSA2MTAKPiAgNi4gTG9hZCBmaXJld2lyZV9vaGNpIChtb2Rwcm9iZSBmaXJld2lyZV9vaGNpKQo+
ICA3LiAtLT4gVGhlIEZpcmV3aXJlIGFkYXB0ZXIgaXMgbm90IGRldGVjdGVkIGF0IGFsbAo+ICA4
LiBVbmxvYWQgZmlyZXdpcmVfb2hjaSBhZ2FpbiAobW9kcHJvYmUgLXIgZmlyZXdpcmVfb2hjaSkK
PiAgOS4gRGlzY29ubmVjdCB0aGUgUHJvZmlyZSA2MTAKPiAgMTAuIExvYWQgZmlyZXdpcmVfb2hj
aSBhZ2FpbiAobW9kcHJvYmUgZmlyZXdpcmVfb2hjaSkKPiAgMTEuIC0tPiBUaGUgRmlyZXdpcmUg
YWRhcHRlciBpcyBkZXRlY3RlZCBhZ2Fpbgo+IAo+IElmIEkgbWVzcyBhcm91bmQgd2l0aCB0aGUg
Y29tYmluYXRpb24gb2YgcmVsb2FkaW5nIHRoZSBmaXJld2lyZV9vaGNpCj4gbW9kdWxlLCBjb25u
ZWN0aW5nL2Rpc2Nvbm5lY3RpbmcgdGhlIFByb2ZpcmUgNjEwLCBhbmQgcHJvYmluZyB0aGluZ3Mg
d2l0aAo+IEZGQURPLCBldmVudHVhbGx5IGEgbW9kcHJvYmUgaGFuZ3MgaW5kZWZpbml0ZWx5IG9u
IHdhaXRfZm9yX2NvbXBsZXRpb24oKSBpbgo+IHRoZSBrZXJuZWwgd2l0aCB0aGUgZG1lc2cgbG9n
cyBpbiBteSBvcmlnaW5hbCBtZXNzYWdlLgo+IFNvbWV0aW1lcyBpdCBldmVuIHByZXZlbnRzIHN5
c3RlbWQgZnJvbSBwb3dlcmluZyBvZmYgdGhlIGNvbXB1dGVyIChiZWNhdXNlCj4gaXQncyB3YWl0
aW5nIGZvciBtb2Rwcm9iZSB0byBleGl0IGZyb20gYSBTSUdLSUxMLi4uKSwgd2hpY2ggaXMgd2h5
IEkgd2FudGVkCj4gdG8gdXBkYXRlIHRoZSBkcml2ZXIKClR3byBrZXJuZWwgbWVzc2FnZXMgYXJl
IGluIHlvdXIgZmlyc3QgcG9zdC4gVGhlIGZpcnN0IG9uZSByZWNvcmRzIHRoYXQKdGhlIHN5c3Rl
bSBkb2VzIG5vdCBleGVjdXRlIGludGVycnVwdCBzZXJ2aWNlIHJvdXRpbmUgZm9yIGhhcmRJUlEg
d2hpY2gKc2hvdWxkIGJlIHRyaWdnZXJlZCBhZ2FpbnN0IGFueSBjb21tYW5kIHJlcXVlc3QgdG8g
dHJhbnNmZXIgYXN5bmNocm9ub3VzIHBhY2tldAp3aGVuIHJldHJpZXZpbmcgdGhlIGRldGVjdGVk
IG5vZGUgZGV2aWNlLiBUaGUgc2Vjb25kIG9uZSByZWNvcmRzIHRoYXQgdGhlCnJlZmVyZW5jZSBj
b3VudCBvZiBmd19jYXJkIGluc3RhbmNlIGNvdWxkIG5vdCByZWFjaCB6ZXJvIGV2ZW4gaWYgd2Fp
dGluZyBzbwpsb25nIHdoZW4gbW9kcHJvYmUoOCkgZXhlY3V0ZXMgdGhlIGRlbGV0ZV9tb2R1bGUg
c3lzdGVtIGNhbGwuCgpJIGd1ZXNzIHRoZSBjYXVzZSBvZiBsYXRlciBtZXNzYWdlIGlzIHRoZSBs
b3N0IG9mIGhhcmRJUlEgaW4gdGhlIGZpcnN0Cm1lc3NhZ2UsIGhvd2V2ZXIsIEkgd291bGQgbGlr
ZSB5b3UgdG8gY29tcGFyZSB0aW1lc3RhbXBzIGZvciB0aGVzZQptZXNzYWdlcy4KCgpUaGFua3MK
ClRha2FzaGkgU2FrYW1vdG8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwptYWlsaW5nIGxpc3QgbGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eDEz
OTQtZGV2ZWwK
